# Install pip requirements.
#
# Generated from /home/lpeltonen/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    requirement = "configparser==3.5.0",
    whl_name = "configparser-3.5.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__configparser_3_5_0",
  )

  whl_library(
    requirement = "entrypoints==0.2.3",
    whl_name = "entrypoints-0.2.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__entrypoints_0_2_3",
  )

  whl_library(
    requirement = "numpy==1.14.2",
    whl_name = "numpy-1.14.2-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__numpy_1_14_2",
  )

  whl_library(
    requirement = "pip==9.0.0",
    whl_name = "pip-9.0.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pip_9_0_0",
  )

  whl_library(
    extra_deps = ["numpy", "scipy"],
    requirement = "scikit_learn==0.17.1",
    whl_name = "scikit_learn-0.17.1-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__scikit_learn_0_17_1",
  )

  whl_library(
    requirement = "scipy==0.17.1",
    whl_name = "scipy-0.17.1-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__scipy_0_17_1",
  )

_requirements = {
  "configparser": "@examples_checked_in_requirements_bzl__configparser_3_5_0//:pkg",
  "configparser:dirty": "@examples_checked_in_requirements_bzl__configparser_3_5_0_dirty//:pkg",
  "entrypoints": "@examples_checked_in_requirements_bzl__entrypoints_0_2_3//:pkg",
  "entrypoints:dirty": "@examples_checked_in_requirements_bzl__entrypoints_0_2_3_dirty//:pkg",
  "numpy": "@examples_checked_in_requirements_bzl__numpy_1_14_2//:pkg",
  "numpy:dirty": "@examples_checked_in_requirements_bzl__numpy_1_14_2_dirty//:pkg",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pkg",
  "pip:dirty": "@examples_checked_in_requirements_bzl__pip_9_0_0_dirty//:pkg",
  "scikit_learn": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1//:pkg",
  "scikit_learn:dirty": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1_dirty//:pkg",
  "scipy": "@examples_checked_in_requirements_bzl__scipy_0_17_1//:pkg",
  "scipy:dirty": "@examples_checked_in_requirements_bzl__scipy_0_17_1_dirty//:pkg"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
