# Install pip requirements.
#
# Generated from /Users/lauri/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    requirement = "cachetools==2.0.1",
    whl_name = "cachetools-2.0.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__cachetools_2_0_1",
  )

  whl_library(
    requirement = "certifi==2018.1.18",
    whl_name = "certifi-2018.1.18-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__certifi_2018_1_18",
  )

  whl_library(
    requirement = "chardet==3.0.4",
    whl_name = "chardet-3.0.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__chardet_3_0_4",
  )

  whl_library(
    requirement = "dill==0.2.7.1",
    whl_name = "dill-0.2.7.1-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__dill_0_2_7_1",
  )

  whl_library(
    requirement = "enum34==1.1.6",
    whl_name = "enum34-1.1.6-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__enum34_1_1_6",
  )

  whl_library(
    requirement = "future==0.16.0",
    whl_name = "future-0.16.0-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__future_0_16_0",
  )

  whl_library(
    requirement = "futures==3.2.0",
    whl_name = "futures-3.2.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__futures_3_2_0",
  )

  whl_library(
    requirement = "gapic_google_cloud_datastore_v1==0.15.3",
    whl_name = "gapic_google_cloud_datastore_v1-0.15.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__gapic_google_cloud_datastore_v1_0_15_3",
  )

  whl_library(
    requirement = "gapic_google_cloud_error_reporting_v1beta1==0.15.3",
    whl_name = "gapic_google_cloud_error_reporting_v1beta1-0.15.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__gapic_google_cloud_error_reporting_v1beta1_0_15_3",
  )

  whl_library(
    requirement = "gapic_google_cloud_logging_v2==0.91.3",
    whl_name = "gapic_google_cloud_logging_v2-0.91.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__gapic_google_cloud_logging_v2_0_91_3",
  )

  whl_library(
    requirement = "google_api_core==0.1.4",
    whl_name = "google_api_core-0.1.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_api_core_0_1_4",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "google_auth==1.4.1",
    whl_name = "google_auth-1.4.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_auth_1_4_1",
  )

  whl_library(
    requirement = "google_cloud==0.29.0",
    whl_name = "google_cloud-0.29.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_0_29_0",
  )

  whl_library(
    requirement = "google_cloud_bigquery==0.28.0",
    whl_name = "google_cloud_bigquery-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_bigquery_0_28_0",
  )

  whl_library(
    requirement = "google_cloud_bigtable==0.28.1",
    whl_name = "google_cloud_bigtable-0.28.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_bigtable_0_28_1",
  )

  whl_library(
    requirement = "google_cloud_core==0.28.1",
    whl_name = "google_cloud_core-0.28.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_core_0_28_1",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "google_cloud_datastore==1.4.0",
    whl_name = "google_cloud_datastore-1.4.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_datastore_1_4_0",
  )

  whl_library(
    requirement = "google_cloud_dns==0.28.0",
    whl_name = "google_cloud_dns-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_dns_0_28_0",
  )

  whl_library(
    requirement = "google_cloud_error_reporting==0.28.0",
    whl_name = "google_cloud_error_reporting-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_error_reporting_0_28_0",
  )

  whl_library(
    requirement = "google_cloud_firestore==0.28.0",
    whl_name = "google_cloud_firestore-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_firestore_0_28_0",
  )

  whl_library(
    requirement = "google_cloud_language==0.31.0",
    whl_name = "google_cloud_language-0.31.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_language_0_31_0",
  )

  whl_library(
    requirement = "google_cloud_logging==1.4.0",
    whl_name = "google_cloud_logging-1.4.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_logging_1_4_0",
  )

  whl_library(
    requirement = "google_cloud_monitoring==0.28.1",
    whl_name = "google_cloud_monitoring-0.28.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_monitoring_0_28_1",
  )

  whl_library(
    requirement = "google_cloud_pubsub==0.29.4",
    whl_name = "google_cloud_pubsub-0.29.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_pubsub_0_29_4",
  )

  whl_library(
    requirement = "google_cloud_resource_manager==0.28.1",
    whl_name = "google_cloud_resource_manager-0.28.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_resource_manager_0_28_1",
  )

  whl_library(
    requirement = "google_cloud_runtimeconfig==0.28.1",
    whl_name = "google_cloud_runtimeconfig-0.28.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_runtimeconfig_0_28_1",
  )

  whl_library(
    requirement = "google_cloud_spanner==0.29.0",
    whl_name = "google_cloud_spanner-0.29.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_spanner_0_29_0",
  )

  whl_library(
    requirement = "google_cloud_speech==0.30.0",
    whl_name = "google_cloud_speech-0.30.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_speech_0_30_0",
  )

  whl_library(
    requirement = "google_cloud_storage==1.6.0",
    whl_name = "google_cloud_storage-1.6.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_storage_1_6_0",
  )

  whl_library(
    requirement = "google_cloud_trace==0.16.0",
    whl_name = "google_cloud_trace-0.16.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_trace_0_16_0",
  )

  whl_library(
    requirement = "google_cloud_translate==1.3.1",
    whl_name = "google_cloud_translate-1.3.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_translate_1_3_1",
  )

  whl_library(
    requirement = "google_cloud_videointelligence==0.28.0",
    whl_name = "google_cloud_videointelligence-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_videointelligence_0_28_0",
  )

  whl_library(
    requirement = "google_cloud_vision==0.28.0",
    whl_name = "google_cloud_vision-0.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_cloud_vision_0_28_0",
  )

  whl_library(
    requirement = "google_gax==0.15.16",
    whl_name = "google_gax-0.15.16-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_gax_0_15_16",
  )

  whl_library(
    requirement = "google_resumable_media==0.3.1",
    whl_name = "google_resumable_media-0.3.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__google_resumable_media_0_3_1",
    extras = ["requests"],
  )

  whl_library(
    requirement = "googleapis_common_protos==1.5.3",
    whl_name = "googleapis_common_protos-1.5.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__googleapis_common_protos_1_5_3",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "grpc_google_iam_v1==0.11.4",
    whl_name = "grpc_google_iam_v1-0.11.4-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__grpc_google_iam_v1_0_11_4",
  )

  whl_library(
    requirement = "grpcio==1.10.1",
    whl_name = "grpcio-1.10.1-cp27-cp27m-macosx_10_11_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__grpcio_1_10_1",
  )

  whl_library(
    requirement = "httplib2==0.11.3",
    whl_name = "httplib2-0.11.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__httplib2_0_11_3",
  )

  whl_library(
    requirement = "idna==2.6",
    whl_name = "idna-2.6-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__idna_2_6",
  )

  whl_library(
    requirement = "numpy==1.14.2",
    whl_name = "numpy-1.14.2-cp27-cp27m-macosx_10_6_intel.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__numpy_1_14_2",
  )

  whl_library(
    requirement = "oauth2client==3.0.0",
    whl_name = "oauth2client-3.0.0-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__oauth2client_3_0_0",
  )

  whl_library(
    requirement = "pip==9.0.0",
    whl_name = "pip-9.0.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pip_9_0_0",
  )

  whl_library(
    requirement = "ply==3.8",
    whl_name = "ply-3.8-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__ply_3_8",
  )

  whl_library(
    requirement = "proto_google_cloud_datastore_v1==0.90.4",
    whl_name = "proto_google_cloud_datastore_v1-0.90.4-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__proto_google_cloud_datastore_v1_0_90_4",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "proto_google_cloud_error_reporting_v1beta1==0.15.3",
    whl_name = "proto_google_cloud_error_reporting_v1beta1-0.15.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__proto_google_cloud_error_reporting_v1beta1_0_15_3",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "proto_google_cloud_logging_v2==0.91.3",
    whl_name = "proto_google_cloud_logging_v2-0.91.3-cp27-none-any.whl",
    name = "examples_checked_in_requirements_bzl__proto_google_cloud_logging_v2_0_91_3",
    extras = ["grpc"],
  )

  whl_library(
    requirement = "protobuf==3.5.2.post1",
    whl_name = "protobuf-3.5.2.post1-cp27-cp27m-macosx_10_6_intel.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__protobuf_3_5_2_post1",
  )

  whl_library(
    requirement = "psutil==5.4.3",
    whl_name = "psutil-5.4.3-cp27-cp27m-macosx_10_12_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__psutil_5_4_3",
    extras = ["enum"],
  )

  whl_library(
    requirement = "pyasn1==0.4.2",
    whl_name = "pyasn1-0.4.2-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pyasn1_0_4_2",
  )

  whl_library(
    requirement = "pyasn1_modules==0.2.1",
    whl_name = "pyasn1_modules-0.2.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pyasn1_modules_0_2_1",
  )

  whl_library(
    requirement = "pytz==2018.4",
    whl_name = "pytz-2018.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pytz_2018_4",
  )

  whl_library(
    requirement = "requests==2.18.4",
    whl_name = "requests-2.18.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__requests_2_18_4",
  )

  whl_library(
    requirement = "rsa==3.4.2",
    whl_name = "rsa-3.4.2-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__rsa_3_4_2",
  )

  whl_library(
    requirement = "scikit_learn==0.17.1",
    whl_name = "scikit_learn-0.17.1-cp27-cp27m-macosx_10_6_intel.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__scikit_learn_0_17_1",
    runtime_deps = ["numpy", "scipy"],
  )

  whl_library(
    requirement = "setuptools==39.0.1",
    whl_name = "setuptools-39.0.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__setuptools_39_0_1",
    extras = ["certs", "ssl"],
  )

  whl_library(
    requirement = "six==1.11.0",
    whl_name = "six-1.11.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__six_1_11_0",
  )

  whl_library(
    requirement = "urllib3==1.22",
    whl_name = "urllib3-1.22-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__urllib3_1_22",
  )

_requirements = {
  "cachetools": "@examples_checked_in_requirements_bzl__cachetools_2_0_1//:pkg",
  "cachetools:dirty": "@examples_checked_in_requirements_bzl__cachetools_2_0_1_dirty//:pkg",
  "certifi": "@examples_checked_in_requirements_bzl__certifi_2018_1_18//:pkg",
  "certifi:dirty": "@examples_checked_in_requirements_bzl__certifi_2018_1_18_dirty//:pkg",
  "chardet": "@examples_checked_in_requirements_bzl__chardet_3_0_4//:pkg",
  "chardet:dirty": "@examples_checked_in_requirements_bzl__chardet_3_0_4_dirty//:pkg",
  "dill": "@examples_checked_in_requirements_bzl__dill_0_2_7_1//:pkg",
  "dill:dirty": "@examples_checked_in_requirements_bzl__dill_0_2_7_1_dirty//:pkg",
  "enum34": "@examples_checked_in_requirements_bzl__enum34_1_1_6//:pkg",
  "enum34:dirty": "@examples_checked_in_requirements_bzl__enum34_1_1_6_dirty//:pkg",
  "future": "@examples_checked_in_requirements_bzl__future_0_16_0//:pkg",
  "future:dirty": "@examples_checked_in_requirements_bzl__future_0_16_0_dirty//:pkg",
  "futures": "@examples_checked_in_requirements_bzl__futures_3_2_0//:pkg",
  "futures:dirty": "@examples_checked_in_requirements_bzl__futures_3_2_0_dirty//:pkg",
  "gapic_google_cloud_datastore_v1": "@examples_checked_in_requirements_bzl__gapic_google_cloud_datastore_v1_0_15_3//:pkg",
  "gapic_google_cloud_datastore_v1:dirty": "@examples_checked_in_requirements_bzl__gapic_google_cloud_datastore_v1_0_15_3_dirty//:pkg",
  "gapic_google_cloud_error_reporting_v1beta1": "@examples_checked_in_requirements_bzl__gapic_google_cloud_error_reporting_v1beta1_0_15_3//:pkg",
  "gapic_google_cloud_error_reporting_v1beta1:dirty": "@examples_checked_in_requirements_bzl__gapic_google_cloud_error_reporting_v1beta1_0_15_3_dirty//:pkg",
  "gapic_google_cloud_logging_v2": "@examples_checked_in_requirements_bzl__gapic_google_cloud_logging_v2_0_91_3//:pkg",
  "gapic_google_cloud_logging_v2:dirty": "@examples_checked_in_requirements_bzl__gapic_google_cloud_logging_v2_0_91_3_dirty//:pkg",
  "google_api_core": "@examples_checked_in_requirements_bzl__google_api_core_0_1_4//:pkg",
  "google_api_core:dirty": "@examples_checked_in_requirements_bzl__google_api_core_0_1_4_dirty//:pkg",
  "google_api_core[grpc]": "@examples_checked_in_requirements_bzl__google_api_core_0_1_4//:grpc",
  "google_api_core:dirty[grpc]": "@examples_checked_in_requirements_bzl__google_api_core_0_1_4_dirty//:grpc",
  "google_auth": "@examples_checked_in_requirements_bzl__google_auth_1_4_1//:pkg",
  "google_auth:dirty": "@examples_checked_in_requirements_bzl__google_auth_1_4_1_dirty//:pkg",
  "google_cloud": "@examples_checked_in_requirements_bzl__google_cloud_0_29_0//:pkg",
  "google_cloud:dirty": "@examples_checked_in_requirements_bzl__google_cloud_0_29_0_dirty//:pkg",
  "google_cloud_bigquery": "@examples_checked_in_requirements_bzl__google_cloud_bigquery_0_28_0//:pkg",
  "google_cloud_bigquery:dirty": "@examples_checked_in_requirements_bzl__google_cloud_bigquery_0_28_0_dirty//:pkg",
  "google_cloud_bigtable": "@examples_checked_in_requirements_bzl__google_cloud_bigtable_0_28_1//:pkg",
  "google_cloud_bigtable:dirty": "@examples_checked_in_requirements_bzl__google_cloud_bigtable_0_28_1_dirty//:pkg",
  "google_cloud_core": "@examples_checked_in_requirements_bzl__google_cloud_core_0_28_1//:pkg",
  "google_cloud_core:dirty": "@examples_checked_in_requirements_bzl__google_cloud_core_0_28_1_dirty//:pkg",
  "google_cloud_core[grpc]": "@examples_checked_in_requirements_bzl__google_cloud_core_0_28_1//:grpc",
  "google_cloud_core:dirty[grpc]": "@examples_checked_in_requirements_bzl__google_cloud_core_0_28_1_dirty//:grpc",
  "google_cloud_datastore": "@examples_checked_in_requirements_bzl__google_cloud_datastore_1_4_0//:pkg",
  "google_cloud_datastore:dirty": "@examples_checked_in_requirements_bzl__google_cloud_datastore_1_4_0_dirty//:pkg",
  "google_cloud_dns": "@examples_checked_in_requirements_bzl__google_cloud_dns_0_28_0//:pkg",
  "google_cloud_dns:dirty": "@examples_checked_in_requirements_bzl__google_cloud_dns_0_28_0_dirty//:pkg",
  "google_cloud_error_reporting": "@examples_checked_in_requirements_bzl__google_cloud_error_reporting_0_28_0//:pkg",
  "google_cloud_error_reporting:dirty": "@examples_checked_in_requirements_bzl__google_cloud_error_reporting_0_28_0_dirty//:pkg",
  "google_cloud_firestore": "@examples_checked_in_requirements_bzl__google_cloud_firestore_0_28_0//:pkg",
  "google_cloud_firestore:dirty": "@examples_checked_in_requirements_bzl__google_cloud_firestore_0_28_0_dirty//:pkg",
  "google_cloud_language": "@examples_checked_in_requirements_bzl__google_cloud_language_0_31_0//:pkg",
  "google_cloud_language:dirty": "@examples_checked_in_requirements_bzl__google_cloud_language_0_31_0_dirty//:pkg",
  "google_cloud_logging": "@examples_checked_in_requirements_bzl__google_cloud_logging_1_4_0//:pkg",
  "google_cloud_logging:dirty": "@examples_checked_in_requirements_bzl__google_cloud_logging_1_4_0_dirty//:pkg",
  "google_cloud_monitoring": "@examples_checked_in_requirements_bzl__google_cloud_monitoring_0_28_1//:pkg",
  "google_cloud_monitoring:dirty": "@examples_checked_in_requirements_bzl__google_cloud_monitoring_0_28_1_dirty//:pkg",
  "google_cloud_pubsub": "@examples_checked_in_requirements_bzl__google_cloud_pubsub_0_29_4//:pkg",
  "google_cloud_pubsub:dirty": "@examples_checked_in_requirements_bzl__google_cloud_pubsub_0_29_4_dirty//:pkg",
  "google_cloud_resource_manager": "@examples_checked_in_requirements_bzl__google_cloud_resource_manager_0_28_1//:pkg",
  "google_cloud_resource_manager:dirty": "@examples_checked_in_requirements_bzl__google_cloud_resource_manager_0_28_1_dirty//:pkg",
  "google_cloud_runtimeconfig": "@examples_checked_in_requirements_bzl__google_cloud_runtimeconfig_0_28_1//:pkg",
  "google_cloud_runtimeconfig:dirty": "@examples_checked_in_requirements_bzl__google_cloud_runtimeconfig_0_28_1_dirty//:pkg",
  "google_cloud_spanner": "@examples_checked_in_requirements_bzl__google_cloud_spanner_0_29_0//:pkg",
  "google_cloud_spanner:dirty": "@examples_checked_in_requirements_bzl__google_cloud_spanner_0_29_0_dirty//:pkg",
  "google_cloud_speech": "@examples_checked_in_requirements_bzl__google_cloud_speech_0_30_0//:pkg",
  "google_cloud_speech:dirty": "@examples_checked_in_requirements_bzl__google_cloud_speech_0_30_0_dirty//:pkg",
  "google_cloud_storage": "@examples_checked_in_requirements_bzl__google_cloud_storage_1_6_0//:pkg",
  "google_cloud_storage:dirty": "@examples_checked_in_requirements_bzl__google_cloud_storage_1_6_0_dirty//:pkg",
  "google_cloud_trace": "@examples_checked_in_requirements_bzl__google_cloud_trace_0_16_0//:pkg",
  "google_cloud_trace:dirty": "@examples_checked_in_requirements_bzl__google_cloud_trace_0_16_0_dirty//:pkg",
  "google_cloud_translate": "@examples_checked_in_requirements_bzl__google_cloud_translate_1_3_1//:pkg",
  "google_cloud_translate:dirty": "@examples_checked_in_requirements_bzl__google_cloud_translate_1_3_1_dirty//:pkg",
  "google_cloud_videointelligence": "@examples_checked_in_requirements_bzl__google_cloud_videointelligence_0_28_0//:pkg",
  "google_cloud_videointelligence:dirty": "@examples_checked_in_requirements_bzl__google_cloud_videointelligence_0_28_0_dirty//:pkg",
  "google_cloud_vision": "@examples_checked_in_requirements_bzl__google_cloud_vision_0_28_0//:pkg",
  "google_cloud_vision:dirty": "@examples_checked_in_requirements_bzl__google_cloud_vision_0_28_0_dirty//:pkg",
  "google_gax": "@examples_checked_in_requirements_bzl__google_gax_0_15_16//:pkg",
  "google_gax:dirty": "@examples_checked_in_requirements_bzl__google_gax_0_15_16_dirty//:pkg",
  "google_resumable_media": "@examples_checked_in_requirements_bzl__google_resumable_media_0_3_1//:pkg",
  "google_resumable_media:dirty": "@examples_checked_in_requirements_bzl__google_resumable_media_0_3_1_dirty//:pkg",
  "google_resumable_media[requests]": "@examples_checked_in_requirements_bzl__google_resumable_media_0_3_1//:requests",
  "google_resumable_media:dirty[requests]": "@examples_checked_in_requirements_bzl__google_resumable_media_0_3_1_dirty//:requests",
  "googleapis_common_protos": "@examples_checked_in_requirements_bzl__googleapis_common_protos_1_5_3//:pkg",
  "googleapis_common_protos:dirty": "@examples_checked_in_requirements_bzl__googleapis_common_protos_1_5_3_dirty//:pkg",
  "googleapis_common_protos[grpc]": "@examples_checked_in_requirements_bzl__googleapis_common_protos_1_5_3//:grpc",
  "googleapis_common_protos:dirty[grpc]": "@examples_checked_in_requirements_bzl__googleapis_common_protos_1_5_3_dirty//:grpc",
  "grpc_google_iam_v1": "@examples_checked_in_requirements_bzl__grpc_google_iam_v1_0_11_4//:pkg",
  "grpc_google_iam_v1:dirty": "@examples_checked_in_requirements_bzl__grpc_google_iam_v1_0_11_4_dirty//:pkg",
  "grpcio": "@examples_checked_in_requirements_bzl__grpcio_1_10_1//:pkg",
  "grpcio:dirty": "@examples_checked_in_requirements_bzl__grpcio_1_10_1_dirty//:pkg",
  "httplib2": "@examples_checked_in_requirements_bzl__httplib2_0_11_3//:pkg",
  "httplib2:dirty": "@examples_checked_in_requirements_bzl__httplib2_0_11_3_dirty//:pkg",
  "idna": "@examples_checked_in_requirements_bzl__idna_2_6//:pkg",
  "idna:dirty": "@examples_checked_in_requirements_bzl__idna_2_6_dirty//:pkg",
  "numpy": "@examples_checked_in_requirements_bzl__numpy_1_14_2//:pkg",
  "numpy:dirty": "@examples_checked_in_requirements_bzl__numpy_1_14_2_dirty//:pkg",
  "oauth2client": "@examples_checked_in_requirements_bzl__oauth2client_3_0_0//:pkg",
  "oauth2client:dirty": "@examples_checked_in_requirements_bzl__oauth2client_3_0_0_dirty//:pkg",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pkg",
  "pip:dirty": "@examples_checked_in_requirements_bzl__pip_9_0_0_dirty//:pkg",
  "ply": "@examples_checked_in_requirements_bzl__ply_3_8//:pkg",
  "ply:dirty": "@examples_checked_in_requirements_bzl__ply_3_8_dirty//:pkg",
  "proto_google_cloud_datastore_v1": "@examples_checked_in_requirements_bzl__proto_google_cloud_datastore_v1_0_90_4//:pkg",
  "proto_google_cloud_datastore_v1:dirty": "@examples_checked_in_requirements_bzl__proto_google_cloud_datastore_v1_0_90_4_dirty//:pkg",
  "proto_google_cloud_datastore_v1[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_datastore_v1_0_90_4//:grpc",
  "proto_google_cloud_datastore_v1:dirty[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_datastore_v1_0_90_4_dirty//:grpc",
  "proto_google_cloud_error_reporting_v1beta1": "@examples_checked_in_requirements_bzl__proto_google_cloud_error_reporting_v1beta1_0_15_3//:pkg",
  "proto_google_cloud_error_reporting_v1beta1:dirty": "@examples_checked_in_requirements_bzl__proto_google_cloud_error_reporting_v1beta1_0_15_3_dirty//:pkg",
  "proto_google_cloud_error_reporting_v1beta1[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_error_reporting_v1beta1_0_15_3//:grpc",
  "proto_google_cloud_error_reporting_v1beta1:dirty[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_error_reporting_v1beta1_0_15_3_dirty//:grpc",
  "proto_google_cloud_logging_v2": "@examples_checked_in_requirements_bzl__proto_google_cloud_logging_v2_0_91_3//:pkg",
  "proto_google_cloud_logging_v2:dirty": "@examples_checked_in_requirements_bzl__proto_google_cloud_logging_v2_0_91_3_dirty//:pkg",
  "proto_google_cloud_logging_v2[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_logging_v2_0_91_3//:grpc",
  "proto_google_cloud_logging_v2:dirty[grpc]": "@examples_checked_in_requirements_bzl__proto_google_cloud_logging_v2_0_91_3_dirty//:grpc",
  "protobuf": "@examples_checked_in_requirements_bzl__protobuf_3_5_2_post1//:pkg",
  "protobuf:dirty": "@examples_checked_in_requirements_bzl__protobuf_3_5_2_post1_dirty//:pkg",
  "psutil": "@examples_checked_in_requirements_bzl__psutil_5_4_3//:pkg",
  "psutil:dirty": "@examples_checked_in_requirements_bzl__psutil_5_4_3_dirty//:pkg",
  "psutil[enum]": "@examples_checked_in_requirements_bzl__psutil_5_4_3//:enum",
  "psutil:dirty[enum]": "@examples_checked_in_requirements_bzl__psutil_5_4_3_dirty//:enum",
  "pyasn1": "@examples_checked_in_requirements_bzl__pyasn1_0_4_2//:pkg",
  "pyasn1:dirty": "@examples_checked_in_requirements_bzl__pyasn1_0_4_2_dirty//:pkg",
  "pyasn1_modules": "@examples_checked_in_requirements_bzl__pyasn1_modules_0_2_1//:pkg",
  "pyasn1_modules:dirty": "@examples_checked_in_requirements_bzl__pyasn1_modules_0_2_1_dirty//:pkg",
  "pytz": "@examples_checked_in_requirements_bzl__pytz_2018_4//:pkg",
  "pytz:dirty": "@examples_checked_in_requirements_bzl__pytz_2018_4_dirty//:pkg",
  "requests": "@examples_checked_in_requirements_bzl__requests_2_18_4//:pkg",
  "requests:dirty": "@examples_checked_in_requirements_bzl__requests_2_18_4_dirty//:pkg",
  "rsa": "@examples_checked_in_requirements_bzl__rsa_3_4_2//:pkg",
  "rsa:dirty": "@examples_checked_in_requirements_bzl__rsa_3_4_2_dirty//:pkg",
  "scikit_learn": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1//:pkg",
  "scikit_learn:dirty": "@examples_checked_in_requirements_bzl__scikit_learn_0_17_1_dirty//:pkg",
  "setuptools": "@examples_checked_in_requirements_bzl__setuptools_39_0_1//:pkg",
  "setuptools:dirty": "@examples_checked_in_requirements_bzl__setuptools_39_0_1_dirty//:pkg",
  "setuptools[certs]": "@examples_checked_in_requirements_bzl__setuptools_39_0_1//:certs",
  "setuptools:dirty[certs]": "@examples_checked_in_requirements_bzl__setuptools_39_0_1_dirty//:certs",
  "setuptools[ssl]": "@examples_checked_in_requirements_bzl__setuptools_39_0_1//:ssl",
  "setuptools:dirty[ssl]": "@examples_checked_in_requirements_bzl__setuptools_39_0_1_dirty//:ssl",
  "six": "@examples_checked_in_requirements_bzl__six_1_11_0//:pkg",
  "six:dirty": "@examples_checked_in_requirements_bzl__six_1_11_0_dirty//:pkg",
  "urllib3": "@examples_checked_in_requirements_bzl__urllib3_1_22//:pkg",
  "urllib3:dirty": "@examples_checked_in_requirements_bzl__urllib3_1_22_dirty//:pkg"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
