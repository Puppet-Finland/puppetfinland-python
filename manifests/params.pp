#
# == Class: python::params
#
# Defines some variables based on the operating system
#
class python::params {

    # Pip package names - these are OS-independent
    $python_virtualenv_pip_package_name = 'virtualenv'
    $python_ipython_pip_package_name = 'ipython'
    $python_boto_pip_package_name = 'boto'

    # OS-specific variables
    case $::osfamily {
        'RedHat': {
            $python_package_name = 'python'
            $python_devel_package_name = 'python-devel'
            $python_subversion_package_name = 'pysvn'
            $python_psycopg2_package_name = 'python-psycopg2'
            $python_setuptools_package_name = 'python-setuptools'
            $python_mysql_package_name = 'mysql-connector-python'
            $python_imaging_package_name = 'python-imaging'
            $python_crypto_package_name = 'python-crypto'
            $python_virtualenv_package_name = 'python-virtualenv'
            $python_ipython_package_name = 'ipython'
            $python_pip_package_name = 'python-pip'
            $python_boto_package_name = 'python-boto'
            $python_django_package_name = 'python-django'
            $python_ldap_package_name = 'python-ldap'
        }
        'Debian': {
            $python_package_name = 'python'
            $python_devel_package_name = 'python-dev'
            $python_subversion_package_name = 'python-subversion'
            $python_psycopg2_package_name = 'python-psycopg2'
            $python_setuptools_package_name = 'python-setuptools'
            $python_mysql_package_name = 'python-mysqldb'
            $python_imaging_package_name = 'python-imaging'
            $python_crypto_package_name = 'python-crypto'
            $python_virtualenv_package_name = 'python-virtualenv'
            $python_ipython_package_name = 'ipython'
            $python_pip_package_name = 'python-pip'
            $python_apt_package_name = 'python-apt'
            $python_boto_package_name = 'python-boto'
            $python_django_package_name = 'python-django'
            $python_ldap_package_name = 'python-ldap'
        }
        'FreeBSD': {
            $python_package_name = 'python'
        }
        default: {
            fail("Unsupported operating system ${::osfamily}")
        }
    }
}
