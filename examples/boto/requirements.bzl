# Install pip requirements.
#
# Generated from /Users/lauri/go/src/github.com/bazelbuild/rules_python/examples/boto/requirements.txt

load("@examples_boto//python:whl.bzl", _whl_library = "whl_library")

_requirements = {
  "boto3": "@examples_boto__boto3_1_4_7//:pkg",
  "boto3:dirty": "@examples_boto__boto3_1_4_7_dirty//:pkg",
  "botocore": "@examples_boto__botocore_1_7_48//:pkg",
  "botocore:dirty": "@examples_boto__botocore_1_7_48_dirty//:pkg",
  "docutils": "@examples_boto__docutils_0_14//:pkg",
  "docutils:dirty": "@examples_boto__docutils_0_14_dirty//:pkg",
  "futures": "@examples_boto__futures_3_2_0//:pkg",
  "futures:dirty": "@examples_boto__futures_3_2_0_dirty//:pkg",
  "jmespath": "@examples_boto__jmespath_0_9_3//:pkg",
  "jmespath:dirty": "@examples_boto__jmespath_0_9_3_dirty//:pkg",
  "python_dateutil": "@examples_boto__python_dateutil_2_7_2//:pkg",
  "python_dateutil:dirty": "@examples_boto__python_dateutil_2_7_2_dirty//:pkg",
  "s3transfer": "@examples_boto__s3transfer_0_1_13//:pkg",
  "s3transfer:dirty": "@examples_boto__s3transfer_0_1_13_dirty//:pkg",
  "six": "@examples_boto__six_1_11_0//:pkg",
  "six:dirty": "@examples_boto__six_1_11_0_dirty//:pkg"
}

_wheels = {
  "boto3": "@examples_boto__boto3_1_4_7//:boto3-1.4.7-py2.py3-none-any.whl",
  "botocore": "@examples_boto__botocore_1_7_48//:botocore-1.7.48-py2.py3-none-any.whl",
  "docutils": "@examples_boto__docutils_0_14//:docutils-0.14-py2-none-any.whl",
  "futures": "@examples_boto__futures_3_2_0//:futures-3.2.0-py2-none-any.whl",
  "jmespath": "@examples_boto__jmespath_0_9_3//:jmespath-0.9.3-py2.py3-none-any.whl",
  "python_dateutil": "@examples_boto__python_dateutil_2_7_2//:python_dateutil-2.7.2-py2.py3-none-any.whl",
  "s3transfer": "@examples_boto__s3transfer_0_1_13//:s3transfer-0.1.13-py2.py3-none-any.whl",
  "six": "@examples_boto__six_1_11_0//:six-1.11.0-py2.py3-none-any.whl"
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
    requirement = "boto3==1.4.7",
    whl_name = "boto3-1.4.7-py2.py3-none-any.whl",
    name = "examples_boto__boto3_1_4_7",
    runtime_deps = ["jmespath", "botocore", "s3transfer"],
  )

  whl_library(
    requirement = "botocore==1.7.48",
    whl_name = "botocore-1.7.48-py2.py3-none-any.whl",
    name = "examples_boto__botocore_1_7_48",
    runtime_deps = ["python-dateutil", "docutils", "jmespath"],
  )

  whl_library(
    requirement = "docutils==0.14",
    whl_name = "docutils-0.14-py2-none-any.whl",
    name = "examples_boto__docutils_0_14",
  )

  whl_library(
    requirement = "futures==3.2.0",
    whl_name = "futures-3.2.0-py2-none-any.whl",
    name = "examples_boto__futures_3_2_0",
  )

  whl_library(
    requirement = "jmespath==0.9.3",
    whl_name = "jmespath-0.9.3-py2.py3-none-any.whl",
    name = "examples_boto__jmespath_0_9_3",
  )

  whl_library(
    requirement = "python_dateutil==2.7.2",
    whl_name = "python_dateutil-2.7.2-py2.py3-none-any.whl",
    name = "examples_boto__python_dateutil_2_7_2",
    runtime_deps = ["six"],
  )

  whl_library(
    requirement = "s3transfer==0.1.13",
    whl_name = "s3transfer-0.1.13-py2.py3-none-any.whl",
    name = "examples_boto__s3transfer_0_1_13",
    runtime_deps = ["botocore", "futures"],
  )

  whl_library(
    requirement = "six==1.11.0",
    whl_name = "six-1.11.0-py2.py3-none-any.whl",
    name = "examples_boto__six_1_11_0",
  )

