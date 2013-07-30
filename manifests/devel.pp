#
# == Class: python::devel
#
# Setup python-devel
#
class python::devel {

    include python
    include python::params

    package { 'python-python-devel':
        ensure => installed,
        name => "${::python::params::python_devel_package_name}",
        require => Class['python::install'],
    }
}
