load("@io_bazel_rules_python//python:whl.bzl", _whl_library = "whl_library")

def _wheel(wheels_map, name):
  name_key = name.replace("-", "_").lower()
  if name_key not in wheels_map:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return wheels_map[name_key]

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
        bd = (buildtime_deps + [_wheel(wheels_map, d) for d in runtime_deps]) if whl_name else []
        _whl_library(
            name = dirty_name,
            dirty = True,
            wheels = bd,
            #whl = "@%s//:%s" % (name, whl_name),
            whl = whl,
            repository = "%{repo}",
            pip_args = [%{pip_args}],
            whl_name = whl_name,
            **kwargs
        )
