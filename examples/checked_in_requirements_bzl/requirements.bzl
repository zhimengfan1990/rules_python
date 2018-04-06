# Install pip requirements.
#
# Generated from /home/lpeltonen/go/src/github.com/bazelbuild/rules_python/examples/checked_in_requirements_bzl/requirements.txt

load("@examples_checked_in_requirements_bzl//python:whl.bzl", "whl_library")

def pip_install():

  whl_library(
    requirement = "alabaster==0.7.10",
    whl_name = "alabaster-0.7.10-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__alabaster_0_7_10",
  )

  whl_library(
    requirement = "appdirs==1.4.3",
    whl_name = "appdirs-1.4.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__appdirs_1_4_3",
  )

  whl_library(
    requirement = "asn1crypto==0.24.0",
    whl_name = "asn1crypto-0.24.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__asn1crypto_0_24_0",
  )

  whl_library(
    requirement = "attrs==17.4.0",
    whl_name = "attrs-17.4.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__attrs_17_4_0",
  )

  whl_library(
    requirement = "Babel==2.5.3",
    whl_name = "Babel-2.5.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__Babel_2_5_3",
  )

  whl_library(
    requirement = "bleach==2.1.3",
    whl_name = "bleach-2.1.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__bleach_2_1_3",
  )

  whl_library(
    requirement = "certifi==2018.1.18",
    whl_name = "certifi-2018.1.18-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__certifi_2018_1_18",
  )

  whl_library(
    requirement = "cffi==1.11.5",
    whl_name = "cffi-1.11.5-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__cffi_1_11_5",
  )

  whl_library(
    requirement = "chardet==3.0.4",
    whl_name = "chardet-3.0.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__chardet_3_0_4",
  )

  whl_library(
    requirement = "cmarkgfm==0.3.0",
    whl_name = "cmarkgfm-0.3.0-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__cmarkgfm_0_3_0",
  )

  whl_library(
    requirement = "configparser==3.5.0",
    whl_name = "configparser-3.5.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__configparser_3_5_0",
  )

  whl_library(
    requirement = "cryptography==2.2.2",
    whl_name = "cryptography-2.2.2-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__cryptography_2_2_2",
    extras = ["docstest"],
  )

  whl_library(
    requirement = "decorator==4.2.1",
    whl_name = "decorator-4.2.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__decorator_4_2_1",
  )

  whl_library(
    requirement = "doc8==0.8.0",
    whl_name = "doc8-0.8.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__doc8_0_8_0",
  )

  whl_library(
    requirement = "docutils==0.14",
    whl_name = "docutils-0.14-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__docutils_0_14",
  )

  whl_library(
    requirement = "entrypoints==0.2.3",
    whl_name = "entrypoints-0.2.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__entrypoints_0_2_3",
  )

  whl_library(
    requirement = "enum34==1.1.6",
    whl_name = "enum34-1.1.6-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__enum34_1_1_6",
  )

  whl_library(
    requirement = "funcsigs==1.0.2",
    whl_name = "funcsigs-1.0.2-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__funcsigs_1_0_2",
  )

  whl_library(
    requirement = "future==0.16.0",
    whl_name = "future-0.16.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__future_0_16_0",
  )

  whl_library(
    requirement = "html5lib==1.0.1",
    whl_name = "html5lib-1.0.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__html5lib_1_0_1",
    extras = ["chardet"],
  )

  whl_library(
    requirement = "idna==2.6",
    whl_name = "idna-2.6-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__idna_2_6",
  )

  whl_library(
    requirement = "imagesize==1.0.0",
    whl_name = "imagesize-1.0.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__imagesize_1_0_0",
  )

  whl_library(
    requirement = "ipaddress==1.0.19",
    whl_name = "ipaddress-1.0.19-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__ipaddress_1_0_19",
  )

  whl_library(
    requirement = "Jinja2==2.10",
    whl_name = "Jinja2-2.10-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__Jinja2_2_10",
    extras = ["i18n"],
  )

  whl_library(
    requirement = "Mako==1.0.7",
    whl_name = "Mako-1.0.7-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__Mako_1_0_7",
  )

  whl_library(
    requirement = "MarkupSafe==1.0",
    whl_name = "MarkupSafe-1.0-cp27-cp27mu-linux_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__MarkupSafe_1_0",
  )

  whl_library(
    requirement = "more_itertools==4.1.0",
    whl_name = "more_itertools-4.1.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__more_itertools_4_1_0",
  )

  whl_library(
    requirement = "numpy==1.14.2",
    whl_name = "numpy-1.14.2-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__numpy_1_14_2",
  )

  whl_library(
    requirement = "packaging==17.1",
    whl_name = "packaging-17.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__packaging_17_1",
  )

  whl_library(
    requirement = "pbr==4.0.1",
    whl_name = "pbr-4.0.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pbr_4_0_1",
  )

  whl_library(
    requirement = "pip==9.0.0",
    whl_name = "pip-9.0.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pip_9_0_0",
  )

  whl_library(
    requirement = "pluggy==0.6.0",
    whl_name = "pluggy-0.6.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pluggy_0_6_0",
  )

  whl_library(
    requirement = "py==1.5.3",
    whl_name = "py-1.5.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__py_1_5_3",
  )

  whl_library(
    requirement = "pycparser==2.18",
    whl_name = "pycparser-2.18-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pycparser_2_18",
  )

  whl_library(
    requirement = "pycuda==2017.1.1",
    whl_name = "pycuda-2017.1.1-cp27-cp27mu-linux_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__pycuda_2017_1_1",
  )

  whl_library(
    requirement = "pyenchant==2.0.0",
    whl_name = "pyenchant-2.0.0-py2.py3.cp27.cp32.cp33.cp34.cp35.cp36.pp27.pp33.pp35-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pyenchant_2_0_0",
  )

  whl_library(
    requirement = "Pygments==2.2.0",
    whl_name = "Pygments-2.2.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__Pygments_2_2_0",
  )

  whl_library(
    requirement = "pyparsing==2.2.0",
    whl_name = "pyparsing-2.2.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pyparsing_2_2_0",
  )

  whl_library(
    requirement = "pytest==3.5.0",
    whl_name = "pytest-3.5.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pytest_3_5_0",
  )

  whl_library(
    requirement = "pytools==2018.3",
    whl_name = "pytools-2018.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pytools_2018_3",
  )

  whl_library(
    requirement = "pytz==2018.3",
    whl_name = "pytz-2018.3-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__pytz_2018_3",
  )

  whl_library(
    requirement = "readme_renderer==18.1",
    whl_name = "readme_renderer-18.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__readme_renderer_18_1",
  )

  whl_library(
    requirement = "requests==2.18.4",
    whl_name = "requests-2.18.4-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__requests_2_18_4",
  )

  whl_library(
    requirement = "restructuredtext_lint==1.1.3",
    whl_name = "restructuredtext_lint-1.1.3-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__restructuredtext_lint_1_1_3",
  )

  whl_library(
    requirement = "scikit_learn==0.17.1",
    whl_name = "scikit_learn-0.17.1-cp27-cp27mu-manylinux1_x86_64.whl",
    name = "examples_checked_in_requirements_bzl__scikit_learn_0_17_1",
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
    requirement = "snowballstemmer==1.2.1",
    whl_name = "snowballstemmer-1.2.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__snowballstemmer_1_2_1",
  )

  whl_library(
    requirement = "Sphinx==1.7.2",
    whl_name = "Sphinx-1.7.2-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__Sphinx_1_7_2",
  )

  whl_library(
    requirement = "sphinx_rtd_theme==0.3.0",
    whl_name = "sphinx_rtd_theme-0.3.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__sphinx_rtd_theme_0_3_0",
  )

  whl_library(
    requirement = "sphinxcontrib_spelling==4.1.0",
    whl_name = "sphinxcontrib_spelling-4.1.0-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__sphinxcontrib_spelling_4_1_0",
  )

  whl_library(
    requirement = "sphinxcontrib_websupport==1.0.1",
    whl_name = "sphinxcontrib_websupport-1.0.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__sphinxcontrib_websupport_1_0_1",
  )

  whl_library(
    requirement = "stevedore==1.28.0",
    whl_name = "stevedore-1.28.0-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__stevedore_1_28_0",
  )

  whl_library(
    requirement = "typing==3.6.4",
    whl_name = "typing-3.6.4-py2-none-any.whl",
    name = "examples_checked_in_requirements_bzl__typing_3_6_4",
  )

  whl_library(
    requirement = "urllib3==1.22",
    whl_name = "urllib3-1.22-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__urllib3_1_22",
  )

  whl_library(
    requirement = "webencodings==0.5.1",
    whl_name = "webencodings-0.5.1-py2.py3-none-any.whl",
    name = "examples_checked_in_requirements_bzl__webencodings_0_5_1",
  )

_requirements = {
  "alabaster": "@examples_checked_in_requirements_bzl__alabaster_0_7_10//:pkg",
  "alabaster:dirty": "@examples_checked_in_requirements_bzl__alabaster_0_7_10_dirty//:pkg",
  "appdirs": "@examples_checked_in_requirements_bzl__appdirs_1_4_3//:pkg",
  "appdirs:dirty": "@examples_checked_in_requirements_bzl__appdirs_1_4_3_dirty//:pkg",
  "asn1crypto": "@examples_checked_in_requirements_bzl__asn1crypto_0_24_0//:pkg",
  "asn1crypto:dirty": "@examples_checked_in_requirements_bzl__asn1crypto_0_24_0_dirty//:pkg",
  "attrs": "@examples_checked_in_requirements_bzl__attrs_17_4_0//:pkg",
  "attrs:dirty": "@examples_checked_in_requirements_bzl__attrs_17_4_0_dirty//:pkg",
  "babel": "@examples_checked_in_requirements_bzl__Babel_2_5_3//:pkg",
  "babel:dirty": "@examples_checked_in_requirements_bzl__Babel_2_5_3_dirty//:pkg",
  "bleach": "@examples_checked_in_requirements_bzl__bleach_2_1_3//:pkg",
  "bleach:dirty": "@examples_checked_in_requirements_bzl__bleach_2_1_3_dirty//:pkg",
  "certifi": "@examples_checked_in_requirements_bzl__certifi_2018_1_18//:pkg",
  "certifi:dirty": "@examples_checked_in_requirements_bzl__certifi_2018_1_18_dirty//:pkg",
  "cffi": "@examples_checked_in_requirements_bzl__cffi_1_11_5//:pkg",
  "cffi:dirty": "@examples_checked_in_requirements_bzl__cffi_1_11_5_dirty//:pkg",
  "chardet": "@examples_checked_in_requirements_bzl__chardet_3_0_4//:pkg",
  "chardet:dirty": "@examples_checked_in_requirements_bzl__chardet_3_0_4_dirty//:pkg",
  "cmarkgfm": "@examples_checked_in_requirements_bzl__cmarkgfm_0_3_0//:pkg",
  "cmarkgfm:dirty": "@examples_checked_in_requirements_bzl__cmarkgfm_0_3_0_dirty//:pkg",
  "configparser": "@examples_checked_in_requirements_bzl__configparser_3_5_0//:pkg",
  "configparser:dirty": "@examples_checked_in_requirements_bzl__configparser_3_5_0_dirty//:pkg",
  "cryptography": "@examples_checked_in_requirements_bzl__cryptography_2_2_2//:pkg",
  "cryptography:dirty": "@examples_checked_in_requirements_bzl__cryptography_2_2_2_dirty//:pkg",
  "cryptography[docstest]": "@examples_checked_in_requirements_bzl__cryptography_2_2_2//:docstest",
  "cryptography:dirty[docstest]": "@examples_checked_in_requirements_bzl__cryptography_2_2_2_dirty//:docstest",
  "decorator": "@examples_checked_in_requirements_bzl__decorator_4_2_1//:pkg",
  "decorator:dirty": "@examples_checked_in_requirements_bzl__decorator_4_2_1_dirty//:pkg",
  "doc8": "@examples_checked_in_requirements_bzl__doc8_0_8_0//:pkg",
  "doc8:dirty": "@examples_checked_in_requirements_bzl__doc8_0_8_0_dirty//:pkg",
  "docutils": "@examples_checked_in_requirements_bzl__docutils_0_14//:pkg",
  "docutils:dirty": "@examples_checked_in_requirements_bzl__docutils_0_14_dirty//:pkg",
  "entrypoints": "@examples_checked_in_requirements_bzl__entrypoints_0_2_3//:pkg",
  "entrypoints:dirty": "@examples_checked_in_requirements_bzl__entrypoints_0_2_3_dirty//:pkg",
  "enum34": "@examples_checked_in_requirements_bzl__enum34_1_1_6//:pkg",
  "enum34:dirty": "@examples_checked_in_requirements_bzl__enum34_1_1_6_dirty//:pkg",
  "funcsigs": "@examples_checked_in_requirements_bzl__funcsigs_1_0_2//:pkg",
  "funcsigs:dirty": "@examples_checked_in_requirements_bzl__funcsigs_1_0_2_dirty//:pkg",
  "future": "@examples_checked_in_requirements_bzl__future_0_16_0//:pkg",
  "future:dirty": "@examples_checked_in_requirements_bzl__future_0_16_0_dirty//:pkg",
  "html5lib": "@examples_checked_in_requirements_bzl__html5lib_1_0_1//:pkg",
  "html5lib:dirty": "@examples_checked_in_requirements_bzl__html5lib_1_0_1_dirty//:pkg",
  "html5lib[chardet]": "@examples_checked_in_requirements_bzl__html5lib_1_0_1//:chardet",
  "html5lib:dirty[chardet]": "@examples_checked_in_requirements_bzl__html5lib_1_0_1_dirty//:chardet",
  "idna": "@examples_checked_in_requirements_bzl__idna_2_6//:pkg",
  "idna:dirty": "@examples_checked_in_requirements_bzl__idna_2_6_dirty//:pkg",
  "imagesize": "@examples_checked_in_requirements_bzl__imagesize_1_0_0//:pkg",
  "imagesize:dirty": "@examples_checked_in_requirements_bzl__imagesize_1_0_0_dirty//:pkg",
  "ipaddress": "@examples_checked_in_requirements_bzl__ipaddress_1_0_19//:pkg",
  "ipaddress:dirty": "@examples_checked_in_requirements_bzl__ipaddress_1_0_19_dirty//:pkg",
  "jinja2": "@examples_checked_in_requirements_bzl__Jinja2_2_10//:pkg",
  "jinja2:dirty": "@examples_checked_in_requirements_bzl__Jinja2_2_10_dirty//:pkg",
  "jinja2[i18n]": "@examples_checked_in_requirements_bzl__Jinja2_2_10//:i18n",
  "jinja2:dirty[i18n]": "@examples_checked_in_requirements_bzl__Jinja2_2_10_dirty//:i18n",
  "mako": "@examples_checked_in_requirements_bzl__Mako_1_0_7//:pkg",
  "mako:dirty": "@examples_checked_in_requirements_bzl__Mako_1_0_7_dirty//:pkg",
  "markupsafe": "@examples_checked_in_requirements_bzl__MarkupSafe_1_0//:pkg",
  "markupsafe:dirty": "@examples_checked_in_requirements_bzl__MarkupSafe_1_0_dirty//:pkg",
  "more_itertools": "@examples_checked_in_requirements_bzl__more_itertools_4_1_0//:pkg",
  "more_itertools:dirty": "@examples_checked_in_requirements_bzl__more_itertools_4_1_0_dirty//:pkg",
  "numpy": "@examples_checked_in_requirements_bzl__numpy_1_14_2//:pkg",
  "numpy:dirty": "@examples_checked_in_requirements_bzl__numpy_1_14_2_dirty//:pkg",
  "packaging": "@examples_checked_in_requirements_bzl__packaging_17_1//:pkg",
  "packaging:dirty": "@examples_checked_in_requirements_bzl__packaging_17_1_dirty//:pkg",
  "pbr": "@examples_checked_in_requirements_bzl__pbr_4_0_1//:pkg",
  "pbr:dirty": "@examples_checked_in_requirements_bzl__pbr_4_0_1_dirty//:pkg",
  "pip": "@examples_checked_in_requirements_bzl__pip_9_0_0//:pkg",
  "pip:dirty": "@examples_checked_in_requirements_bzl__pip_9_0_0_dirty//:pkg",
  "pluggy": "@examples_checked_in_requirements_bzl__pluggy_0_6_0//:pkg",
  "pluggy:dirty": "@examples_checked_in_requirements_bzl__pluggy_0_6_0_dirty//:pkg",
  "py": "@examples_checked_in_requirements_bzl__py_1_5_3//:pkg",
  "py:dirty": "@examples_checked_in_requirements_bzl__py_1_5_3_dirty//:pkg",
  "pycparser": "@examples_checked_in_requirements_bzl__pycparser_2_18//:pkg",
  "pycparser:dirty": "@examples_checked_in_requirements_bzl__pycparser_2_18_dirty//:pkg",
  "pycuda": "@examples_checked_in_requirements_bzl__pycuda_2017_1_1//:pkg",
  "pycuda:dirty": "@examples_checked_in_requirements_bzl__pycuda_2017_1_1_dirty//:pkg",
  "pyenchant": "@examples_checked_in_requirements_bzl__pyenchant_2_0_0//:pkg",
  "pyenchant:dirty": "@examples_checked_in_requirements_bzl__pyenchant_2_0_0_dirty//:pkg",
  "pygments": "@examples_checked_in_requirements_bzl__Pygments_2_2_0//:pkg",
  "pygments:dirty": "@examples_checked_in_requirements_bzl__Pygments_2_2_0_dirty//:pkg",
  "pyparsing": "@examples_checked_in_requirements_bzl__pyparsing_2_2_0//:pkg",
  "pyparsing:dirty": "@examples_checked_in_requirements_bzl__pyparsing_2_2_0_dirty//:pkg",
  "pytest": "@examples_checked_in_requirements_bzl__pytest_3_5_0//:pkg",
  "pytest:dirty": "@examples_checked_in_requirements_bzl__pytest_3_5_0_dirty//:pkg",
  "pytools": "@examples_checked_in_requirements_bzl__pytools_2018_3//:pkg",
  "pytools:dirty": "@examples_checked_in_requirements_bzl__pytools_2018_3_dirty//:pkg",
  "pytz": "@examples_checked_in_requirements_bzl__pytz_2018_3//:pkg",
  "pytz:dirty": "@examples_checked_in_requirements_bzl__pytz_2018_3_dirty//:pkg",
  "readme_renderer": "@examples_checked_in_requirements_bzl__readme_renderer_18_1//:pkg",
  "readme_renderer:dirty": "@examples_checked_in_requirements_bzl__readme_renderer_18_1_dirty//:pkg",
  "requests": "@examples_checked_in_requirements_bzl__requests_2_18_4//:pkg",
  "requests:dirty": "@examples_checked_in_requirements_bzl__requests_2_18_4_dirty//:pkg",
  "restructuredtext_lint": "@examples_checked_in_requirements_bzl__restructuredtext_lint_1_1_3//:pkg",
  "restructuredtext_lint:dirty": "@examples_checked_in_requirements_bzl__restructuredtext_lint_1_1_3_dirty//:pkg",
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
  "snowballstemmer": "@examples_checked_in_requirements_bzl__snowballstemmer_1_2_1//:pkg",
  "snowballstemmer:dirty": "@examples_checked_in_requirements_bzl__snowballstemmer_1_2_1_dirty//:pkg",
  "sphinx": "@examples_checked_in_requirements_bzl__Sphinx_1_7_2//:pkg",
  "sphinx:dirty": "@examples_checked_in_requirements_bzl__Sphinx_1_7_2_dirty//:pkg",
  "sphinx_rtd_theme": "@examples_checked_in_requirements_bzl__sphinx_rtd_theme_0_3_0//:pkg",
  "sphinx_rtd_theme:dirty": "@examples_checked_in_requirements_bzl__sphinx_rtd_theme_0_3_0_dirty//:pkg",
  "sphinxcontrib_spelling": "@examples_checked_in_requirements_bzl__sphinxcontrib_spelling_4_1_0//:pkg",
  "sphinxcontrib_spelling:dirty": "@examples_checked_in_requirements_bzl__sphinxcontrib_spelling_4_1_0_dirty//:pkg",
  "sphinxcontrib_websupport": "@examples_checked_in_requirements_bzl__sphinxcontrib_websupport_1_0_1//:pkg",
  "sphinxcontrib_websupport:dirty": "@examples_checked_in_requirements_bzl__sphinxcontrib_websupport_1_0_1_dirty//:pkg",
  "stevedore": "@examples_checked_in_requirements_bzl__stevedore_1_28_0//:pkg",
  "stevedore:dirty": "@examples_checked_in_requirements_bzl__stevedore_1_28_0_dirty//:pkg",
  "typing": "@examples_checked_in_requirements_bzl__typing_3_6_4//:pkg",
  "typing:dirty": "@examples_checked_in_requirements_bzl__typing_3_6_4_dirty//:pkg",
  "urllib3": "@examples_checked_in_requirements_bzl__urllib3_1_22//:pkg",
  "urllib3:dirty": "@examples_checked_in_requirements_bzl__urllib3_1_22_dirty//:pkg",
  "webencodings": "@examples_checked_in_requirements_bzl__webencodings_0_5_1//:pkg",
  "webencodings:dirty": "@examples_checked_in_requirements_bzl__webencodings_0_5_1_dirty//:pkg"
}

all_requirements = _requirements.values()

def requirement(name):
  name_key = name.replace("-", "_").lower()
  if name_key not in _requirements:
    fail("Could not find pip-provided dependency: '%s'" % name)
  return _requirements[name_key]
