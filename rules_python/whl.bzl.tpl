load("@io_bazel_rules_python//python:whl.bzl", _whl_library = "whl_library")

def whl_library(name, requirement=None, whl=None, whl_name=None, buildtime_deps=[], runtime_deps=[], **kwargs):
    dirty_name = "%s_dirty" % name
    if name not in native.existing_rules():
        _whl_library(
            name = name,
            requirement = requirement,
            repository = "%{repo}",
            pip_args = [%{pip_args}],
            buildtime_deps = buildtime_deps,
            whl_name = whl_name,
            whl = whl,
            **kwargs
        )

    if dirty_name not in native.existing_rules() and whl_name:
        _whl_library(
            name = dirty_name,
            dirty = True,
            #wheels = ["@%s//:%s" % (name, whl_name)],
            whl = "@%s//:%s" % (name, whl_name),
            #whl = whl,
            repository = "%{repo}",
            pip_args = [%{pip_args}],
            whl_name = whl_name,
            **kwargs
        )
