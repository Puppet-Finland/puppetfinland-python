#
# == Class: python::boto
#
# Setup python-boto
#
# == Parameters
#
# [*provider*]
#   The package provider to use. Defaults to undef, which means that the default 
#   provider is used. The only other valid value is 'pip'.
# [*version*]
#   Boto version to install. This only applies if provider is set to 'pip', 
#   hence undef by default.
#
class python::boto
(
    $provider = undef,
    $version = undef,
)
{
    if $provider {
        validate_re($provider, [ '^pip$' ])
    }

    include ::python
    include ::python::params

    if $provider == 'pip' {
        include ::python::pip
        $package_name = $::python::params::python_boto_pip_package_name

        # If $version is defined, use that. Otherwise use the latest version 
        # available.
        $ensure = $version ? {
            undef => 'installed',
            default => $version,
        }
    } else {
        $package_name = $::python::params::python_boto_package_name
        $ensure = 'installed'
    }

    package { 'python-python-boto':
        ensure   => $ensure,
        name     => $package_name,
        provider => $provider,
        require  => Class['python::install'],
    }
}
