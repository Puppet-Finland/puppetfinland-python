# python

A Puppet module for managing Python and installing Python modules.

This module allows easy cross-platform installation of Python and Python
modules while keeping the amount of parameters to the minimum. Generally each
class is just included without any parameters. This allows including the same
class on the same node several times without having to resort to tricks like
virtual resources. This also helps keep the class structure extremely simple
and understandable.

In short, the approach taken here is, by design, completely different
from that used by
[stankevich/python](https://forge.puppet.com/stankevich/python), where the list
of modules to enable is defined by parameters of the main class.

# Module usage

To install Python:

    include ::python

To include Python modules using the default settings:

    include ::python::apt
    include ::python::crypto
    include ::python::devel
    include ::python::djangoenv
    include ::python::imaging
    include ::python::ipython
    include ::python::mysql
    include ::python::psycopg2
    include ::python::setuptools
    include ::python::subversion
    include ::python::virtualenv

Some of the subclasses have additional parameters: please refer to the manifests for details.

