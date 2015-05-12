#
# == Class: python::subversion
#
# Setup SVN support for Python.
#
class python::subversion {

    include ::python
    include ::python::params

    package { 'python-python-subversion':
        ensure  => installed,
        name    => $::python::params::python_subversion_package_name,
        require => Class['python'],
    }
}
