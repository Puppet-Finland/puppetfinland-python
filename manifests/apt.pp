#
# == Class: python::apt
#
# Setup python-apt
#
# This class is not particularly useful on non-Debian hosts, so those are 
# excluded to prevent errors.
#
class python::apt {

    if $::osfamily == 'Debian' {

        include ::python
        include ::python::params

        package { 'python-python-apt':
            ensure  => installed,
            name    => $::python::params::python_apt_package_name,
            require => Class['python::install'],
        }
    }
}
