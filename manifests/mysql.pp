#
# == Class: python:mysql
#
# Setup Python MySQL bindings
#
class python::mysql {

    include ::python
    include ::python::params

    package { 'python-python-mysql':
        ensure  => installed,
        name    => $::python::params::python_mysql_package_name,
        require => Class['python'],
    }
}
