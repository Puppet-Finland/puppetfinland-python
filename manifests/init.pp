#
# == Class: python
#
# This is a dummy class. The actual work is done in the subclasses.
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
class python {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_python', 'true') != 'false' {
    include python::install
}
}
