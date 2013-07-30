#
# == Class: python::imaging
#
# Setup python-imaging
#
class python::imaging {

    include python
    include python::params

    package { 'python-python-imaging':
        name => "${::python::params::python_imaging_package_name}",
        ensure => installed,
        require => Class['python::install'],
    }
}
