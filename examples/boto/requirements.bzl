# Install pip requirements.
#
# Generated from /home/lpeltonen/go/src/github.com/bazelbuild/rules_python/examples/boto/requirements.txt

load("@examples_boto//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    requirement = "boto3==1.4.7",
    whl_name = "boto3-1.4.7-py2.py3-none-any.whl",
    name = "examples_boto__boto3_1_4_7",
    constraints = ["botocore==1.7.48", "docutils==0.14", "futures==3.2.0", "jmespath==0.9.3", "python_dateutil==2.7.2", "s3transfer==0.1.13", "six==1.11.0"],
  )

  whl_library(
    requirement = "botocore==1.7.48",
    whl_name = "botocore-1.7.48-py2.py3-none-any.whl",
    name = "examples_boto__botocore_1_7_48",
    constraints = ["docutils==0.14", "jmespath==0.9.3", "python_dateutil==2.7.2", "six==1.11.0"],
  )

  whl_library(
    requirement = "docutils==0.14",
    whl_name = "docutils-0.14-py2-none-any.whl",
    name = "examples_boto__docutils_0_14",
    constraints = [],
  )

  whl_library(
    requirement = "futures==3.2.0",
    whl_name = "futures-3.2.0-py2-none-any.whl",
    name = "examples_boto__futures_3_2_0",
    constraints = [],
  )

  whl_library(
    requirement = "jmespath==0.9.3",
    whl_name = "jmespath-0.9.3-py2.py3-none-any.whl",
    name = "examples_boto__jmespath_0_9_3",
    constraints = [],
  )

  whl_library(
    requirement = "python_dateutil==2.7.2",
    whl_name = "python_dateutil-2.7.2-py2.py3-none-any.whl",
    name = "examples_boto__python_dateutil_2_7_2",
    constraints = ["six==1.11.0"],
  )

  whl_library(
    requirement = "s3transfer==0.1.13",
    whl_name = "s3transfer-0.1.13-py2.py3-none-any.whl",
    name = "examples_boto__s3transfer_0_1_13",
    constraints = ["botocore==1.7.48", "docutils==0.14", "futures==3.2.0", "jmespath==0.9.3", "python_dateutil==2.7.2", "six==1.11.0"],
  )

  whl_library(
    requirement = "six==1.11.0",
    whl_name = "six-1.11.0-py2.py3-none-any.whl",
    name = "examples_boto__six_1_11_0",
    constraints = [],
  )

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

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
