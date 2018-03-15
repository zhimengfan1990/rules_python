load("@io_bazel_rules_python//python:whl.bzl", _whl_library = "whl_library")

def whl_library(name, **kwargs):
    dirty_name = "%s_dirty" % name
    if name not in native.existing_rules():
        _whl_library(
            name = name,
            requirements = "@%{repo}//:requirements.bzl",
            pip_args = [%{pip_args}],
            **kwargs
        )

    if dirty_name not in native.existing_rules():
        _whl_library(
            name = dirty_name,
            dirty = True,
            requirements = "@%{repo}//:requirements.bzl",
            pip_args = [%{pip_args}],
            **kwargs
        )
