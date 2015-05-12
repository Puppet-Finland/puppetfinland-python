#
# == Class: python::imaging
#
# Setup python-imaging
#
class python::imaging {

    include ::python
    include ::python::params

    package { 'python-python-imaging':
        ensure  => installed,
        name    => $::python::params::python_imaging_package_name,
        require => Class['python::install'],
    }
}
