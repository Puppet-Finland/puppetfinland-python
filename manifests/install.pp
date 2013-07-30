class python::install {

    include python::params

    package { 'python-python':
        ensure => installed,
        name => "${::python::params::python_package_name}",
    }
}
