#
# == Class: python::subversion
#
# Setup SVN support for Python. We wouldn't strictly need to include 
# 'subversion' as the package management should install it automatically.
#
class python::subversion {

    include python
    include subversion

    package { 'python-python-subversion':
        name => "${::python::params::python_subversion_package_name}",
        ensure => installed,
        require => Class['python'],
    }
}
