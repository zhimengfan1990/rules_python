# Copyright 2017 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Import .whl files into Bazel."""

def _extract_wheels(ctx, wheels):
    args = [
        "python",
        ctx.path(ctx.attr._piptool),
        "unpack",
        "--directory", str(ctx.path("")),
        "--repository", ctx.attr.repository,
    ]

    args += ["--whl=%s" % w for w in wheels]
    args += ["--add-dependency=%s" % d for d in ctx.attr.additional_runtime_deps]
    args += ["--extras=%s" % extra for extra in ctx.attr.extras]

    print(args)
    result = ctx.execute(args, quiet=False)
    if result.return_code:
        fail("extract_wheels failed: %s (%s)" % (result.stdout, result.stderr))

def _whl_impl(ctx):
    """Core implementation of whl_library."""

    root = str(ctx.path("../..")) + '/'
    pythonpath = ':'.join([root + dep.workspace_root for dep in ctx.attr.buildtime_deps])
    cmd = [
        "python",
        ctx.path(ctx.attr._piptool),
        "resolve",
        "--name", ctx.attr.name,
        "--directory", ctx.path(""),
    ]
    cmd += ["--", ctx.attr.requirement]
    cmd += ctx.attr.pip_args
    #cmd += ["-v"]
    cmd += ["--no-deps"]
    result = ctx.execute(cmd, quiet=False, environment={'PYTHONPATH': pythonpath})
    if result.return_code:
        fail("pip wheel failed: %s (%s)" % (result.stdout, result.stderr))
    result = ctx.execute(["sh", "-c", "ls ./%s-*.whl" % ctx.attr.requirement.replace("==", "-")])
    if result.return_code:
        fail("whl not found: %s (%s)" % (result.stdout, result.stderr))
    whl = result.stdout.strip()

    _extract_wheels(ctx, [whl])

whl_library = repository_rule(
    attrs = {
        "requirement": attr.string(),
        "buildtime_deps": attr.label_list(
            allow_files=["*.whl"],
        ),
        "additional_runtime_deps": attr.string_list(),
        "repository":  attr.string(),
        "extras": attr.string_list(),
        "pip_args": attr.string_list(),
        "_piptool": attr.label(
            executable = True,
            default = Label("//tools:piptool.par"),
            cfg = "host",
        ),
    },
    implementation = _whl_impl,
)


def _extract_wheels_impl(ctx):
    """Core implementation of extract_wheels."""
    for w in ctx.attr.wheels:
        ctx.symlink(w, w.name)
    _extract_wheels(ctx, [ctx.path(w) for w in ctx.attr.wheels])

extract_wheels = repository_rule(
    attrs = {
        "wheels": attr.label_list(
            allow_files = True,
        ),
        "additional_runtime_deps": attr.string_list(),
        "repository":  attr.string(),
        "extras": attr.string_list(),
        "_piptool": attr.label(
            executable = True,
            default = Label("//tools:piptool.par"),
            cfg = "host",
        ),
    },
    implementation = _extract_wheels_impl,
)


"""A rule for importing <code>.whl</code> dependencies into Bazel.

<b>This rule is currently used to implement <code>pip_import</code>,
it is not intended to work standalone, and the interface may change.</b>
See <code>pip_import</code> for proper usage.

This rule imports a <code>.whl</code> file as a <code>py_library</code>:
<pre><code>whl_library(
    name = "foo",
    whl = ":my-whl-file",
    repository = "name of pip_import rule",
)
</code></pre>

This rule defines a <code>@foo//:pkg</code> <code>py_library</code> target.

Args:
  whl: The path to the .whl file (the name is expected to follow [this
    convention](https://www.python.org/dev/peps/pep-0427/#file-name-convention))

  requirements: The name of the pip_import repository rule from which to
    load this .whl's dependencies.

  extras: A subset of the "extras" available from this <code>.whl</code> for which
    <code>requirements</code> has the dependencies.
"""
