load("@io_bazel_rules_python//python:whl.bzl", _whl_library = "whl_library")

def whl_library(name, requirement=None, buildtime_deps=[], runtime_deps=[], **kwargs):
    dirty_name = "%s_dirty" % name
    if name not in native.existing_rules():
        _whl_library(
            name = name,
            requirement = requirement,
            requirements = "@%{repo}//:requirements.bzl",
            pip_args = [%{pip_args}],
            whl_build_deps = buildtime_deps,
            **kwargs
        )

    if dirty_name not in native.existing_rules():
        _whl_library(
            name = dirty_name,
            wheels = ["@%s//:wheel" % name],
            requirements = "@%{repo}//:requirements.bzl",
            pip_args = [%{pip_args}],
            **kwargs
        )
