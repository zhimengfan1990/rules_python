import sys
import os
import imp


namespace_clashes = [%{modules}
]


# https://docs.python.org/2/library/imp.html
# https://www.python.org/dev/peps/pep-0302/
class ImportFixer(object):
    def __init__(self, *args):
        self.path = []
        self.module_names = args
        namespace_packages = self.module_names

    def contains(self, module, path):
        name = module.split('.')
        for word in reversed(name):
            (dir, base) = os.path.split(path)
            if base != word:
                return False
            path = dir
        return True

    def find_module(self, name, path=None):
        prefix = name.split('.')
        if prefix[0] in self.module_names:
            from pkgutil import extend_path
            if path == None:
                self.path = extend_path(self.path, name)
            else:
                self.path = extend_path(path, name)
            try:
                import pkg_resources
                pkg_resources.declare_namespace(name)
            except ImportError:
                print 'ImportFixer find_module error : %s' % name
                pass
            return self
        return None

    def load_module(self, name):
        if name in sys.modules:
            return sys.modules[name]
        for path in self.path:
            if self.contains(name, path):
                try:
                    module_info = imp.find_module("", [path])
                    module = imp.load_module("", *module_info)
                    sys.modules[name] = module
                    return module
                except ImportError:
                    print 'ImportFixer load_module error : %s' % name
        return None


sys.meta_path.append(ImportFixer(*namespace_clashes))
