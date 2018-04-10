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

def _whl_impl(repository_ctx):
    """Core implementation of whl_library."""

    if repository_ctx.attr.requirement and repository_ctx.attr.whl:
        fail("requirement and whl attribute are mutually exclusive")

    whl = None
    if repository_ctx.attr.requirement:
        root = str(repository_ctx.path("../..")) + '/'
        pythonpath = ':'.join([root + dep.workspace_root for dep in repository_ctx.attr.buildtime_deps])
        cmd = [
            "python",
            repository_ctx.path(repository_ctx.attr._piptool),
            "resolve",
            "--name", repository_ctx.attr.name,
            "--directory", repository_ctx.path(""),
        ]
        cmd += ["--", repository_ctx.attr.requirement]
        cmd += repository_ctx.attr.pip_args
        #cmd += ["-v"]
        if not repository_ctx.attr.dirty:
            cmd += ["--no-deps"]
        result = repository_ctx.execute(cmd, quiet=False, environment={'PYTHONPATH': pythonpath})
        if result.return_code:
            fail("pip wheel failed: %s (%s)" % (result.stdout, result.stderr))
        result = repository_ctx.execute(["sh", "-c", "ls ./%s-*.whl" % repository_ctx.attr.requirement.replace("==", "-")])
        if result.return_code:
            fail("whl not found: %s (%s)" % (result.stdout, result.stderr))
        whl = result.stdout.strip()
    elif repository_ctx.attr.whl:
        whl = repository_ctx.path(repository_ctx.attr.whl)
        repository_ctx.symlink(repository_ctx.attr.whl, repository_ctx.attr.whl.name)

    args = [
        "python",
        repository_ctx.path(repository_ctx.attr._piptool),
        "unpack",
        "--directory", str(repository_ctx.path("")),
        "--repository", repository_ctx.attr.repository,
    ]

    if whl:
        args += ["--whl", whl]

    for w in repository_ctx.attr.wheels:
        args += ["--whl", repository_ctx.path(w)]

    if repository_ctx.attr.extra_deps:
        for d in repository_ctx.attr.extra_deps:
            args += ["--add-dependency", d]

    if repository_ctx.attr.extras:
        args += [
        "--extras=%s" % extra
        for extra in repository_ctx.attr.extras
        ]

    if repository_ctx.attr.dirty:
        args += ['--dirty']

    print(args)
    result = repository_ctx.execute(args, quiet=False)
    if result.return_code:
        fail("whl_library failed: %s (%s)" % (result.stdout, result.stderr))

    #if repository_ctx.attr.requirement:
    #    result = repository_ctx.execute(["sh", "-c", "rm ./*.whl"])
    #    if result.return_code:
    #        fail("removing wheels failed: %s (%s)" % (result.stdout, result.stderr))

whl_library = repository_rule(
    attrs = {
        "requirement": attr.string(),
        "buildtime_deps": attr.label_list(
            # TODO: WheelProvider
        ),
        "runtime_deps": attr.string_list(),
        "additional_runtime_deps": attr.string_list(),
        "whl": attr.label(
            allow_files = True,
            single_file = True,
        ),
        "wheels": attr.label_list(),
        "whl_name": attr.string(),
        "repository":  attr.string(),
        "extra_deps": attr.string_list(),
        "extras": attr.string_list(),
        "pip_args": attr.string_list(),
        "dirty": attr.bool(default=False),
        "_piptool": attr.label(
            executable = True,
            default = Label("//tools:piptool.par"),
            cfg = "host",
        ),
    },
    implementation = _whl_impl,
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
