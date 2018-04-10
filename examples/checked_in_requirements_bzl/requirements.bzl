# Install pip requirements.
#
# Generated from /Users/lauri/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    requirement = "botocore==1.10.3",
    whl_name = "botocore-1.10.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__botocore_1_10_3",
    runtime_deps = ["python-dateutil", "docutils", "jmespath"],
  )

  whl_library(
    requirement = "docutils==0.14",
    whl_name = "docutils-0.14-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__docutils_0_14",
  )

  whl_library(
    requirement = "jmespath==0.9.3",
    whl_name = "jmespath-0.9.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__jmespath_0_9_3",
  )

  whl_library(
    buildtime_deps = ["@examples_checked_in_requirements_bzl__botocore_1_10_3//:wheel"],
    requirement = "pip==9.0.0",
    whl_name = "pip-9.0.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pip_9_0_0",
  )

  whl_library(
    requirement = "python_dateutil==2.6.1",
    whl_name = "python_dateutil-2.6.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__python_dateutil_2_6_1",
    runtime_deps = ["six"],
  )

  whl_library(
    requirement = "six==1.11.0",
    whl_name = "six-1.11.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__six_1_11_0",
  )

_requirements = {
  "botocore": "@examples_checked_in_requirements_bzl__botocore_1_10_3//:pkg",
  "botocore:dirty": "@examples_checked_in_requirements_bzl__botocore_1_10_3_dirty//:pkg",
  "docutils": "@examples_checked_in_requirements_bzl__docutils_0_14//:pkg",
  "docutils:dirty": "@examples_checked_in_requirements_bzl__docutils_0_14_dirty//:pkg",
  "jmespath": "@examples_checked_in_requirements_bzl__jmespath_0_9_3//:pkg",
  "jmespath:dirty": "@examples_checked_in_requirements_bzl__jmespath_0_9_3_dirty//:pkg",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pkg",
  "pip:dirty": "@examples_checked_in_requirements_bzl__pip_9_0_0_dirty//:pkg",
  "python_dateutil": "@examples_checked_in_requirements_bzl__python_dateutil_2_6_1//:pkg",
  "python_dateutil:dirty": "@examples_checked_in_requirements_bzl__python_dateutil_2_6_1_dirty//:pkg",
  "six": "@examples_checked_in_requirements_bzl__six_1_11_0//:pkg",
  "six:dirty": "@examples_checked_in_requirements_bzl__six_1_11_0_dirty//:pkg"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
