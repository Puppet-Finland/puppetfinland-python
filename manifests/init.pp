#
# == Class: python
#
# This is a dummy class. The actual work is done in the subclasses.
#
# == Parameters
#
# [*manage*]
#   Manage Python using Puppet. Valid values are true (default) and false.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# Mikko Vilpponen <vilpponen@protecomp.fi>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class python
(
    $manage = true
)
{

validate_bool($manage)

if $manage {
    include ::python::install
}
}
