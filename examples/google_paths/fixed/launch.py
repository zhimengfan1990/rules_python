#!/usr/bin/env python

import os
import re
import sys
import imp

# Substitutions
main_path = "{main}"
workspace_name = "{workspace_name}"

# Find the runfiles tree
def FindModuleSpace():
  stub_filename = os.path.abspath(sys.argv[0])
  module_space = stub_filename + '.runfiles'
  if os.path.isdir(module_space):
    return module_space

  runfiles_pattern = r"(.*\.runfiles)/.*"
  matchobj = re.match(runfiles_pattern, os.path.abspath(sys.argv[0]))
  if matchobj:
    return matchobj.group(1)

  raise AssertionError('Cannot find .runfiles directory for %s' % sys.argv[0])

runfiles = FindModuleSpace()
main_fullpath = os.path.join(runfiles, workspace_name, main_path)
print(main_fullpath)

args = sys.argv[1:]
new_env = {}
python_path = ':'.join([os.path.join(runfiles, d) for d in [workspace_name, 'site-packages']])
new_env['PYTHONPATH'] = python_path
#os.environ.update(new_env)

python = "python"
args = [python, main_fullpath] + args
print(new_env)
print(args)
os.execvpe(args[0], args, new_env)

sys.exit(0)
_, dirs, _ = os.walk(runfiles).next()
print(dirs)

class Finder():
  def find_module(self, fullname, path=None):
    print("find_module called!")
    print(fullname, path)
    for d in dirs:
      p = os.path.join(runfiles, d)
      print("Searching from " + p)
      try:
        m = imp.find_module(fullname, p)
        return m
      except ImportError:
        pass
    return imp.find_module(fullname, path)

print(sys.meta_path)
sys.meta_path += [Finder()]

import google.auth as auth
print(auth)

import google.cloud as cl
print(cl)
