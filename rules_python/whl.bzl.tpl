load("@io_bazel_rules_python//python:whl.bzl", _whl_library = "whl_library")

def whl_library(name, wheels_map={}, requirement=None, whl=None, whl_name=None, buildtime_deps=[], runtime_deps=[], **kwargs):
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

    if dirty_name not in native.existing_rules():
        _whl_library(
            name = dirty_name,
            dirty = True,
            #buildtime_deps = buildtime_deps + [wheels_map[d] for d in runtime_deps],
            #whl = "@%s//:%s" % (name, whl_name),
            whl = whl,
            repository = "%{repo}",
            pip_args = [%{pip_args}],
            whl_name = whl_name,
            **kwargs
        )
