#
# == Class: python::pip
#
# Install python-pip. This is required for each package resource that is 
# installed via the pip provider. Use of run stages would be an alternative 
# approach, but those or avoided here due to their general nastyness and severe 
# limitations:
#
# <http://docs.puppetlabs.com/puppet/latest/reference/lang_run_stages.html>
#
class python::pip {

    include python

    package { 'python-python-pip':
        name => "${::python::params::python_pip_package_name}",
        ensure => installed,
        require => Class['python'],
    }
}
