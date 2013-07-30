#
# == Class: python::ipython
#
# Setup python-ipython
#
# == Parameters
#
# [*use_pip*]
#   Install using pip instead of from operating system's software repositories. 
#   Defaults to 'no', any other value means 'yes'.
#
class python::ipython
(
    $use_pip = 'no'
)
{

    include python
    include python::params

    if $use_pip == 'no' {

        package { 'python-python-ipython':
            name => "${::python::params::python_ipython_package_name}",
            ensure => installed,
            require => Class['python::install'],
        }

    } else {

        include python::pip

        package { 'python-python-ipython':
            name => "${::python::params::python_ipython_pip_package_name}",
            ensure => present,
            provider => pip,
            require => Class['python::install','python::pip'],
        }
    }
}
