#
# == Class: python::setuptools
#
# Setup python-setuptools
#
class python::setuptools {

    include ::python
    include ::python::params

    package { 'python-python-setuptools':
        ensure  => installed,
        name    => $::python::params::python_setuptools_package_name,
        require => Class['python::install'],
    }
}
