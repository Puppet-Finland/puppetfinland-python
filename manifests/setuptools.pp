#
# == Class: python::setuptools
#
# Setup python-setuptools
#
class python::setuptools {

    include python
    include python::params

    package { 'python-python-setuptools':
        name => "${::python::params::python_setuptools_package_name}",
        ensure => installed,
        require => Class['python::install'],
    }
}
