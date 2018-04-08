def _py_binary_impl(ctx):
    # If main is not provided, try to find among the source files
    main = None
    if not ctx.attr.main:
        for f in ctx.attr.srcs:
            f = f.files.to_list()[0]
            if f.basename == ctx.attr.name + '.py':
                main = f
                break
        if not main:
            fail('Argument "main" not provided and couldn\'t infer from the source files provided')
    else:
        main = ctx.attr.main.files.to_list()[0]

    # Create the action that runs the command
    ctx.actions.expand_template(
        template=ctx.file.launcher,
        output=ctx.outputs.executable,
        substitutions={
            "{main}": main.path,
            "{workspace_name}": ctx.workspace_name,
        },
        is_executable=True)

    # Construct site-packages
    transitive_runfiles = depset(transitive=[dep.default_runfiles.files for dep in ctx.attr.deps])
    external_runfiles = [f for f in transitive_runfiles if f.path.startswith('external/')]
    internal_runfiles = [f for f in transitive_runfiles if not f.path.startswith('external/')]
    root_symlinks = {
        'site-packages/' + '/'.join(f.path.split('/')[2:]): f for f in external_runfiles
    }
    root_symlinks['site-packages/sitecustomize.py'] = ctx.file._sitecustomize
    runfiles = ctx.runfiles(transitive_files=depset(internal_runfiles), root_symlinks=root_symlinks)
    return [DefaultInfo(runfiles=runfiles)]

_py_binary = rule(
    implementation = _py_binary_impl,
    attrs = {
        "main": attr.label(allow_files=True),
        "launcher": attr.label(allow_files=True, single_file=True),
        "deps": attr.label_list(),
        "srcs": attr.label_list(
            allow_files=['.py'],
            mandatory=True,
            allow_empty=False,
        ),
        "_sitecustomize": attr.label(
            allow_files = True,
            single_file = True,
            default = Label("//:sitecustomize.py"),
        ),
    },
    executable = True,
)

def py_binary(name, main=None, srcs=[], **kwargs):
    libname = name + "_lib"
    native.py_library(
        name = libname,
        srcs = srcs,
        **kwargs
    )

    _py_binary(
        name = name,
        launcher = 'launch.py',
        srcs = srcs,
        deps = [':' + libname],
    )
