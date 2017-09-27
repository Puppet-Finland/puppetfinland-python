#
# == Class: python::django
#
# Setup python-django
#
class python::django {

    include ::python
    include ::python::params

    package { 'python-django':
        ensure  => installed,
        name    => $::python::params::python_django_package_name,
        require => Class['python::install'],
    }
}
