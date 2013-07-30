#
# == Class: python:mysql
#
# Setup Python MySQL bindings
#
class python::mysql {

    include python
    include python::params

    package { 'python-python-mysql':
        name => "${::python::params::python_mysql_package_name}",
        ensure => installed,
        require => Class['python'],
    }
}
