#
# == Class: python:psycopg2
#
# Setup Python PostgreSQL bindings
#
class python::psycopg2 {

    include ::python
    include ::python::params

    package { 'python-python-psycopg2':
        ensure  => installed,
        name    => $::python::params::python_psycopg2_package_name,
        require => Class['python'],
    }
}
