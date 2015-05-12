#
# == Class: python
#
# This is a dummy class. The actual work is done in the subclasses.
#
# == Parameters
#
# [*manage*]
#   Manage Python using Puppet. Valid values are 'yes' (default) and 'no'.
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
     $manage = 'yes'
)
{

if $manage == 'yes' {
    include ::python::install
}
}
