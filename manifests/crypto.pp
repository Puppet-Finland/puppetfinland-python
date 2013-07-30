#
# == Class: python::crypto
#
# Setup python-crypto
#
class python::crypto {

    include python
    include python::params

    package { 'python-python-crypto':
        name => "${::python::params::python_crypto_package_name}",
        ensure => installed,
        require => Class['python::install'],
    }
}
