
import sys
import imp
import os

namespace_clashes = [
    'google',
]

# https://docs.python.org/2/library/imp.html
# https://www.python.org/dev/peps/pep-0302/
class Finder(object):
    def find_module(self, fullname, path=None):
        parts = fullname.split('.')
        name = parts[-1]
        if any([fullname.startswith(m + '.') for m in namespace_clashes]):
            for p in sys.path:
                try:
                    search = os.path.join(p, *parts[:-1])
                    self.module_info = imp.find_module(name, [search])
                    return self
                except ImportError:
                    pass
        self.module_info = imp.find_module(name, path)
        return self

    def load_module(self, name):
        if name in sys.modules:
            return sys.modules[name]
        module = imp.load_module(name, *self.module_info)
        sys.modules[name] = module
        return module

sys.meta_path += [Finder()]
