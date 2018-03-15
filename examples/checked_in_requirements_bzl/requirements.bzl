# Install pip requirements.
#
# Generated from /home/lpeltonen/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    name = "pypi__pip_9_0_0",
    requirement = "pip==9.0.0",
  )

_requirements = {
  "pip": "@pypi__pip_9_0_0//:pkg",
  "pip:dirty": "@pypi__pip_9_0_0_dirty//:pkg"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
