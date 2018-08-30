# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ImportsProvider = provider(
    fields = {
        'imports' : 'collected imports (dict)' # todo depset?
    }
)

def _symlink_path(f, imports):
  for i in imports:
    if f.short_path.startswith(i + "/"):
      return "PYTHONPATH/" + f.short_path.replace(i + "/", "")
  return '/'.join(["PYTHONPATH"]+f.short_path.split('/')[2:])

def _is_external(f, imports):
  #if f.short_path.startswith("../"):
  for i in imports:
    if f.short_path.startswith(i + "/"):
      return True
  return f.short_path.startswith('../')
  #return "/".join(f.short_path.replace("../", "external/").split("/")[0:2]) in imports

def _get_initfiles(files_map, empty_init_py):
    symlinks = {}
    for f in files_map:
        parts = f.rsplit(".", 1)
        if parts[-1] not in ["py", "pyc", "so"]:
            continue
        # Given foo/bar/baz.py,
        # we split to [foo, bar, baz.py]
        # and ensure existence of [foo/__init__.py, foo/bar/__init__.py]
        parts = f.split('/')
        for i in range(1, len(parts)):
            dirname = "/".join(parts[0:i])
            if dirname + "/__init__.py" not in files_map and dirname + "/__init__.pyc" not in files_map:
                symlinks[dirname + "/__init__.py"] = empty_init_py
    return symlinks

def _py_binary_impl(ctx):
    srcs = ctx.attr.srcs
    data = ctx.attr.data

    # If empty is not provided, try to find among the source files
    main = None
    if not ctx.attr.main:
        for f in srcs:
            f = f.files.to_list()[0]
            if f.basename == ctx.attr.name + '.py':
                main = f
                break
        if not main:
            fail('Argument "main" not provided and couldn\'t infer from the source files provided')
    else:
        main = ctx.attr.main.files.to_list()[0]

    # Get the info from the toolchain
    toolchain = ctx.toolchains["@io_bazel_rules_python//python:toolchain"]
    interpreter = toolchain.interpreter.files.to_list()[0]
    imports = {}
    for d in ctx.attr.deps:
      imports.update(d[ImportsProvider].imports)

    # Gather the runfiles.
    # First, collect all runfiles from dependent targets.
    runfiles = ctx.runfiles(files=[interpreter, main], collect_default=True)
    # Symlink external dependencies under a PYTHONPATH directory. 
    symlinks = {_symlink_path(f, imports): f for f in runfiles.files if _is_external(f, imports)}
    # Collect all other runfiles to a depset.
    transitive_files = depset(
        direct=[f for f in runfiles.files if not _is_external(f, imports)],
        transitive=[d.files for d in ctx.attr.srcs] + [d.files for d in ctx.attr.data],
    )
    # Generate missing __init__.py files.
    if ctx.attr.legacy_create_init:
        symlinks.update(_get_initfiles({f.short_path: None for f in transitive_files.to_list()}, ctx.file._empty_init_py))
        symlinks.update(_get_initfiles(symlinks, ctx.file._empty_init_py))

    runfiles = ctx.runfiles(
        symlinks=symlinks,
        files=[interpreter, main], # not necessary?
        transitive_files=transitive_files,
    )

    # Create the action that runs the command
    cmd = """#!/bin/bash
set -eo pipefail
EXECROOT="$(dirname $(readlink -f "$0"))/$(basename $0).runfiles/{workspace_name}"
PYTHONPATH="$EXECROOT:$EXECROOT/PYTHONPATH" $EXECROOT/{python} {pyargs} $EXECROOT/{main} "$@"
""".format(workspace_name=ctx.workspace_name, python=interpreter.path, main=main.path, pyargs=" ".join(toolchain.pyargs))
    executable = ctx.actions.declare_file("%s/%s/%s" % (ctx.attr.name, toolchain.name, ctx.attr.name))
    ctx.actions.write(executable, cmd, is_executable=True)

    return [DefaultInfo(runfiles=runfiles, executable=executable)]

def _imports_aspect_impl(target, ctx):
    imports = {}
    if hasattr(ctx.rule.attr, "imports") and ctx.rule.attr.imports:
        prefix = []
        if not target.label.workspace_root:
            if not target.label.package:
                fail("Root packages cannot have imports = ['.']")
            if len(ctx.rule.attr.imports) != 1 or ctx.rule.attr.imports[0] != ".":
                fail("Only imports = ['.'] is currently supported")
            imports[target.label.package] = None
    elif target.label.workspace_root:
        print("WARNING: Expecting imports = ['.'] for external libs")
    for dep in ctx.rule.attr.deps:
        imports.update(dep[ImportsProvider].imports)
    return [ImportsProvider(imports = imports)]


imports_aspect = aspect(implementation = _imports_aspect_impl,
    attr_aspects = ['deps'],
    attrs = {
    }
)

py_binary = rule(
    implementation = _py_binary_impl,
    attrs = {
        "main": attr.label(allow_files=True),
        "deps": attr.label_list(
            providers=[], # TODO
            aspects=[imports_aspect], # TODO?
        ),
        "srcs": attr.label_list(
            allow_files=['.py'],
            mandatory=True,
            allow_empty=False,
        ),
        "data": attr.label_list(
            allow_files=True,
            cfg = "data",
        ),
        "legacy_create_init": attr.bool(
            default = True,
        ),
        "_empty_init_py": attr.label(
            allow_files=True,
            single_file = True,
            default = "@io_bazel_rules_python//python:__init__.py",
        ),
    },
    toolchains = ["@io_bazel_rules_python//python:toolchain"]
)

py_test = rule(
    implementation = _py_binary_impl,
    attrs = {
        "main": attr.label(allow_files=True),
        "deps": attr.label_list(
            providers=[], # TODO
            aspects=[imports_aspect], # TODO?
        ),
        "srcs": attr.label_list(
            allow_files=['.py'],
            mandatory=True,
            allow_empty=False,
        ),
        "data": attr.label_list(
            allow_files=True,
            cfg = "data",
        ),
        "legacy_create_init": attr.bool(
            default = True,
        ),
        "_empty_init_py": attr.label(
            allow_files=True,
            single_file = True,
            default = "@io_bazel_rules_python//python:__init__.py",
        ),
    },
    test = True,
    toolchains = ["@io_bazel_rules_python//python:toolchain"]
)

def py_library(*args, **kwargs):
  """See the Bazel core py_library documentation.

  [available here](
  https://docs.bazel.build/versions/master/be/python.html#py_library).
  """
  native.py_library(*args, **kwargs)
