#
# == Class: python::virtualenv
#
# Setup python-virtualenv
#
# == Parameters
#
# [*use_pip*]
#   Install using pip instead of from operating system's software repositories. 
#   Defaults to 'no', any other value means 'yes'.
#
class python::virtualenv
(
    $use_pip = 'no'
)
{

    include python
    include python::params

    if $use_pip == 'no' {

        package { 'python-python-virtualenv':
            name => "${::python::params::python_virtualenv_package_name}",
            ensure => installed,
            require => Class['python::install'],
        }

    } else {

        include python::pip

        package { 'python-python-virtualenv':
            name => "${::python::params::python_virtualenv_pip_package_name}",
            ensure => present,
            provider => pip,
            require => Class['python::install','python::pip'],
        }
    }
}
