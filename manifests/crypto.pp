#
# == Class: python::crypto
#
# Setup python-crypto
#
class python::crypto {

    include ::python
    include ::python::params

    package { 'python-python-crypto':
        ensure  => installed,
        name    => $::python::params::python_crypto_package_name,
        require => Class['python::install'],
    }
}
