# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""The whl modules defines classes for interacting with Python packages."""

import argparse
import collections
import distlib.markers
import itertools
import json
import os
import re
import zipfile


class Wheel(object):

  def __init__(self, path):
    self._path = path
    self._extra_deps = []
    self._extra_buildtime_deps = []
    self._extra_runtime_deps = []

  def add_extra_buildtime_deps(self, deps):
    self._extra_buildtime_deps += deps

  def add_extra_runtime_deps(self, deps):
    self._extra_runtime_deps += deps

  def add_extra_deps(self, deps):
    self._extra_deps += deps

  def get_extra_buildtime_deps(self):
    return sorted(list(set(self._extra_buildtime_deps)))

  def get_extra_runtime_deps(self):
    return sorted(list(set(self._extra_runtime_deps)))

  def get_extra_deps(self):
    return sorted(list(set(self._extra_deps)))

  def path(self):
    return self._path

  def basename(self):
    return os.path.basename(self.path())

  def distribution(self):
    # See https://www.python.org/dev/peps/pep-0427/#file-name-convention
    parts = self.basename().split('-')
    return parts[0]

  def version(self):
    # See https://www.python.org/dev/peps/pep-0427/#file-name-convention
    parts = self.basename().split('-')
    return parts[1]

  def repository_name(self, prefix='pypi'):
    # Returns the canonical name of the Bazel repository for this package.
    canonical = '{}__{}_{}'.format(prefix, self.distribution(), self.version())
    # Escape any illegal characters with underscore.
    return re.sub('[-.]', '_', canonical)

  def _dist_info(self):
    # Return the name of the dist-info directory within the .whl file.
    # e.g. google_cloud-0.27.0-py2.py3-none-any.whl ->
    #      google_cloud-0.27.0.dist-info
    return '{}-{}.dist-info'.format(self.distribution(), self.version())

  def metadata(self):
    # Extract the structured data from metadata.json in the WHL's dist-info
    # directory.
    with zipfile.ZipFile(self.path(), 'r') as whl:
      # first check for metadata.json
      try:
        with whl.open(os.path.join(self._dist_info(), 'metadata.json')) as f:
          return json.loads(f.read().decode("utf-8"))
      except KeyError:
          pass
      # fall back to METADATA file (https://www.python.org/dev/peps/pep-0427/)
      with whl.open(os.path.join(self._dist_info(), 'METADATA')) as f:
        return self._parse_metadata(f.read().decode("utf-8"))

  def name(self):
    return self.metadata().get('name')

  def dependencies(self, extra=None, all_extras=False):
    """Access the dependencies of this Wheel.

    Args:
      extra: if specified, include the additional dependencies
            of the named "extra".

    Yields:
      the names of requirements from the metadata.json
    """
    # TODO(mattmoor): Is there a schema to follow for this?
    found = set()
    run_requires = self.metadata().get('run_requires', [])

    for requirement in run_requires:
      if requirement.get('extra') != extra:
        # Match the requirements for the extra we're looking for.
        continue
      if 'environment' in requirement:
        try:
          if not distlib.markers.interpret(requirement['environment']):
            continue
        except SyntaxError as e:
          #raise RuntimeError('Error interpreting environment for {} ({}): {}'.format(
          #                  self.distribution(), requirement['environment'], str(e)))
          pass
      requires = requirement.get('requires', [])
      for entry in requires:
        # Strip off any trailing versioning data.
        parts = re.split('[ ><=()]', entry)
        found.add(parts[0])
    return found

  def extras(self):
    return self.metadata().get('extras', [])

  def _expand_single(self, directory):
    with zipfile.ZipFile(self.path(), 'r') as whl:
      whl.extractall(directory)

  # TODO(conrado): add support for initial extra not being empty (from pip)
  # TODO(conrado): add support for extra dependencies
  def _expand_recursive(self, directory, wheel_map, extracted={}, extra=None):
    self._expand_single(directory)

    for d in self.dependencies(extra):
        d = d.replace('-', '_')
        e = None
        if '[' in d:
            d, e = d.split('[')
            e = e[:-1]
        if (d, e) not in extracted:
            extracted[(d,e)] = True
            wheel_map[d]._expand_recursive(directory, wheel_map, extracted, e)

  def expand(self, directory, dirty=False):
    if dirty:
        wheel_folder = os.path.dirname(self.path())
        # Enumerate the .whl files we downloaded.
        def list_whls(dir):
          for root, unused_dirnames, filenames in os.walk(dir):
            for fname in filenames:
              if fname.endswith('.whl'):
                yield os.path.join(root, fname)

        wheels = [Wheel(path) for path in list_whls(wheel_folder)]
        wheel_map = {w.distribution(): w for w in wheels}

        extracted = {}
        self._expand_recursive(directory, wheel_map, extracted)

        for root, dirs, files in os.walk(directory):
            if '__init__.py' not in files:
                with open(os.path.join(root, '__init__.py'), 'w') as f:
                    pass
    else:
        self._expand_single(directory)


  # _parse_metadata parses METADATA files according to https://www.python.org/dev/peps/pep-0314/
  def _parse_metadata(self, content):
    name_pattern = re.compile('Name: (.*)')
    extra_pattern = re.compile('Provides-Extra: (.*)')
    dep_pattern = re.compile('Requires-Dist: ([^;]+)(;(.*))?')
    deps = []
    extras = []
    env_deps = collections.defaultdict(list)
    for line in content.splitlines():
      m = dep_pattern.match(line)
      if m:
        dep = m.group(1).strip()
        env = m.group(3)
        if env:
          env_deps[env.strip()] += [dep]
        else:
          deps += [dep]
      m = extra_pattern.match(line)
      if m:
        extras += [m.group(1).strip()]
    return {
      'name': name_pattern.search(content).group(1).strip(),
      'extras': list(set(extras)),
      'run_requires': [{ 'requires': deps }] + [{
        'environment': k,
        'requires': v,
      } for k, v in env_deps.items()],
    }

def unpack(args):
  whls = [Wheel(w) for w in args.whl]
  whl = whls[0]

  print("WHEELS:", whls)
  extra_deps = args.add_dependency
  if not extra_deps:
      extra_deps = []

  # Extract the files into the current directory
  # TODO(conrado): do one expansion for each extra? It might be easier to create completely new
  # wheel repos
  for w in whls:
    print("Expanding {} to {}\n".format(w.distribution(), args.directory)
    w.expand(args.directory, False)

  imports = ['.']
  purelib_path = os.path.join(args.directory, '%s-%s.data' % (whl.distribution(), whl.version()), 'purelib')
  if os.path.isdir(purelib_path):
      imports.append(purelib_path)

  with open(os.path.join(args.directory, 'BUILD'), 'w') as f:
    f.write("""
package(default_visibility = ["//visibility:public"])

load("@{repository}//:requirements.bzl", "requirement")

filegroup(
  name = "wheel",
  data = ["{wheel}"],
)
py_library(
    name = "pkg",
    srcs = glob(["**/*.py"]),
    data = glob(["**/*"], exclude=["**/*.py", "**/* *", "*.whl", "BUILD", "WORKSPACE"]),
    # This makes this directory a top-level in the python import
    # search path for anything that depends on this.
    imports = [{imports}],
    deps = [
        "@{repository}//:site",{dependencies}
    ],
)
{extras}""".format(
  wheel = whl.basename(),
  repository=args.repository,
  dependencies=''.join([
    '\n        requirement("%s"),' % d
    for d in itertools.chain(whl.dependencies(), extra_deps)
  ]) if not args.dirty else '',
  imports=','.join(map(lambda i: '"%s"' % i, imports)),
  extras='\n\n'.join([
    """py_library(
    name = "{extra}",
    deps = [
        ":pkg",{deps}
    ],
)""".format(extra=extra,
            deps=','.join([
                'requirement("%s")' % dep
                for dep in itertools.chain(whl.dependencies(extra), extra_deps)
            ]))
    for extra in args.extras or []
  ])))

if __name__ == '__main__':
  main()
