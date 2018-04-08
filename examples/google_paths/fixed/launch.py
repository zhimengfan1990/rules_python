#!/usr/bin/env python

import os
import re
import sys

# Substitutions
main_path = "{main}"
workspace_name = "{workspace_name}"

def find_runfiles():
  stub_filename = os.path.abspath(sys.argv[0])
  module_space = stub_filename + '.runfiles'
  if os.path.isdir(module_space):
    return module_space

  runfiles_pattern = r"(.*\.runfiles)/.*"
  matchobj = re.match(runfiles_pattern, os.path.abspath(sys.argv[0]))
  if matchobj:
    return matchobj.group(1)

  raise AssertionError('Cannot find .runfiles directory for %s' % sys.argv[0])

runfiles = find_runfiles()
main_fullpath = os.path.join(runfiles, workspace_name, main_path)

env = {
  'PYTHONPATH': ':'.join([os.path.join(runfiles, d) for d in [workspace_name, 'site-packages']])
}

args = ["python", main_fullpath] + sys.argv[1:]
os.execvpe(args[0], args, env)
