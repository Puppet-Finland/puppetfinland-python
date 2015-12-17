#
# == Class: python::boto
#
# Setup python-boto
#
class python::boto {

    include ::python
    include ::python::params

    package { 'python-python-boto':
        ensure  => installed,
        name    => $::python::params::python_boto_package_name,
        require => Class['python::install'],
    }
}
