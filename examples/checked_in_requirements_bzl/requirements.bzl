# Install pip requirements.
#
# Generated from /home/lpeltonen/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", _whl_library = "whl_library")

_requirements = {
  "botocore": "@examples_checked_in_requirements_bzl__botocore_1_10_4//:pkg",
  "botocore:dirty": "@examples_checked_in_requirements_bzl__botocore_1_10_4_dirty//:pkg",
  "docutils": "@examples_checked_in_requirements_bzl__docutils_0_14//:pkg",
  "docutils:dirty": "@examples_checked_in_requirements_bzl__docutils_0_14_dirty//:pkg",
  "jmespath": "@examples_checked_in_requirements_bzl__jmespath_0_9_3//:pkg",
  "jmespath:dirty": "@examples_checked_in_requirements_bzl__jmespath_0_9_3_dirty//:pkg",
  "numpy": "@examples_checked_in_requirements_bzl__numpy_1_14_2//:pkg",
  "numpy:dirty": "@examples_checked_in_requirements_bzl__numpy_1_14_2_dirty//:pkg",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pkg",
  "pip:dirty": "@examples_checked_in_requirements_bzl__pip_9_0_0_dirty//:pkg",
  "python_dateutil": "@examples_checked_in_requirements_bzl__python_dateutil_2_6_1//:pkg",
  "python_dateutil:dirty": "@examples_checked_in_requirements_bzl__python_dateutil_2_6_1_dirty//:pkg",
  "scikit_learn": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1//:pkg",
  "scikit_learn:dirty": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1_dirty//:pkg",
  "scipy": "@examples_checked_in_requirements_bzl__scipy_0_17_1//:pkg",
  "scipy:dirty": "@examples_checked_in_requirements_bzl__scipy_0_17_1_dirty//:pkg",
  "six": "@examples_checked_in_requirements_bzl__six_1_11_0//:pkg",
  "six:dirty": "@examples_checked_in_requirements_bzl__six_1_11_0_dirty//:pkg"
}

_wheels = {
  "botocore": "@examples_checked_in_requirements_bzl__botocore_1_10_4//:botocore-1.10.4-py2.py3-none-any.whl",
  "docutils": "@examples_checked_in_requirements_bzl__docutils_0_14//:docutils-0.14-py2-none-any.whl",
  "jmespath": "@examples_checked_in_requirements_bzl__jmespath_0_9_3//:jmespath-0.9.3-py2.py3-none-any.whl",
  "numpy": "@examples_checked_in_requirements_bzl__numpy_1_14_2//:numpy-1.14.2-cp27-cp27mu-manylinux1_x86_64.whl",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pip-9.0.0-py2.py3-none-any.whl",
  "python_dateutil": "@examples_checked_in_requirements_bzl__python_dateutil_2_6_1//:python_dateutil-2.6.1-py2.py3-none-any.whl",
  "scikit_learn": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1//:scikit_learn-0.17.1-cp27-cp27mu-manylinux1_x86_64.whl",
  "scipy": "@examples_checked_in_requirements_bzl__scipy_0_17_1//:scipy-0.17.1-cp27-cp27mu-manylinux1_x86_64.whl",
  "six": "@examples_checked_in_requirements_bzl__six_1_11_0//:six-1.11.0-py2.py3-none-any.whl"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]

def whl_library(**kwargs):
  _whl_library(wheels_map=_wheels, **kwargs)

def pip_install():

  whl_library(
    requirement = "botocore==1.10.4",
    name = "examples_checked_in_requirements_bzl__botocore_1_10_4",
    runtime_deps = ["python-dateutil", "docutils", "jmespath"],
  )

  whl_library(
    requirement = "docutils==0.14",
    name = "examples_checked_in_requirements_bzl__docutils_0_14",
  )

  whl_library(
    requirement = "jmespath==0.9.3",
    name = "examples_checked_in_requirements_bzl__jmespath_0_9_3",
  )

  whl_library(
    requirement = "numpy==1.14.2",
    name = "examples_checked_in_requirements_bzl__numpy_1_14_2",
  )

  whl_library(
    requirement = "pip==9.0.0",
    name = "examples_checked_in_requirements_bzl__pip_9_0_0",
  )

  whl_library(
    requirement = "python-dateutil==2.6.1",
    name = "examples_checked_in_requirements_bzl__python_dateutil_2_6_1",
    runtime_deps = ["six"],
  )

  whl_library(
    requirement = "scikit-learn==0.17.1",
    name = "examples_checked_in_requirements_bzl__scikit_learn_0_17_1",
  )

  whl_library(
    requirement = "scipy==0.17.1",
    name = "examples_checked_in_requirements_bzl__scipy_0_17_1",
  )

  whl_library(
    requirement = "six==1.11.0",
    name = "examples_checked_in_requirements_bzl__six_1_11_0",
  )

