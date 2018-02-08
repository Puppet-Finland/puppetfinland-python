#
# == Class: python:ldap
#
# Setup Python LDAP bindings
#
class python::ldap {

    include ::python
    include ::python::params

    package { 'python-python-ldap':
        ensure  => installed,
        name    => $::python::params::python_ldap_package_name,
        require => Class['python'],
    }
}
