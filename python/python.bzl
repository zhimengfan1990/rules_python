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
    transitive_runfiles = depset(transitive=[ctx.attr.lib.default_runfiles.files])
    external_runfiles = [f for f in transitive_runfiles if f.path.startswith('external/')]
    internal_runfiles = [f for f in transitive_runfiles if not f.path.startswith('external/')]
    root_symlinks = {
        'site-packages/' + '/'.join(f.path.split('/')[2:]): f for f in external_runfiles
    }
    root_symlinks['site-packages/sitecustomize.py'] = ctx.file._sitecustomize
    runfiles = ctx.runfiles(transitive_files=depset(internal_runfiles), root_symlinks=root_symlinks)
    return [DefaultInfo(runfiles=runfiles), ctx.attr.lib.py]

_py_binary = rule(
    implementation = _py_binary_impl,
    attrs = {
        "main": attr.label(allow_files=True),
        "lib": attr.label(),
        "srcs": attr.label_list(
            allow_files=['.py'],
            mandatory=True,
            allow_empty=False,
        ),
        "launcher": attr.label(
            allow_files = True,
            single_file = True,
            default = Label("//python:launcher.py"),
        ),
        "_sitecustomize": attr.label(
            allow_files = True,
            single_file = True,
            default = Label("//python:sitecustomize.py"),
        ),
    },
    executable = True,
)

def py_library(*args, **kwargs):
  """See the Bazel core py_library documentation.

  [available here](
  https://docs.bazel.build/versions/master/be/python.html#py_library).
  """
  native.py_library(*args, **kwargs)

def __py_binary(name, main=None, srcs=[], **kwargs):
  """See the Bazel core py_binary documentation.

  [available here](
  https://docs.bazel.build/versions/master/be/python.html#py_binary).
  """
  libname = name + "_lib"
  native.py_library(
    name = libname,
    srcs = srcs,
    **kwargs
  )
  _py_binary(
    name = name,
    main = main,
    srcs = srcs,
    lib = ':' + libname,
  )

def py_test(*args, **kwargs):
  """See the Bazel core py_test documentation.

  [available here](
  https://docs.bazel.build/versions/master/be/python.html#py_test).
  """
  native.py_test(*args, **kwargs)

def py_binary(*args, **kwargs):
  """See the Bazel core py_binary documentation.

  [available here](
  https://docs.bazel.build/versions/master/be/python.html#py_binary).
  """
  native.py_binary(*args, **kwargs)
