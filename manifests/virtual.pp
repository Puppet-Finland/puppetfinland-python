#
# == Class: python:virtual
#
# Define various virtual resources which are realized in other subclasses based 
# on the tags attached to the resources. This is useful primarily in making sure 
# software installed outside the distribution's packaging system has all the 
# required dependency packages installed.
#
# This approach works well if the dependency lists are fairly static and long; 
# however, if the classes (e.g. trac) realizing the resources have to include 
# resources conditionally using parameters - for example to select between 
# different databases - this approach gets nasty very soon. This is because we'd 
# need several different tags to manage the resource realization properly. For 
# example for Trac we'd need five tags:
#
#     'trac', 'trac-postgresql', 'trac-mysql', 'trac-subversion', 'trac-git'
#
# This amount of tags tend to defeat the purpose of this virtual resource 
# approach, which is simplification of the code. In addition, it makes the 
# dependencies less obvious, as they have to be hunted down specifically from 
# this file instead of being visible directly in the realizing class (e.g. trac) 
# as include lines. Yet another limitation with this tagged approach is that it 
# only works for simple resources which don't need any parameters.
#
# The alternative approach, i.e. creating small "shell" subclasses for each 
# depency and including those in the "realizing" classes is much more 
# transparent and not that much work. Additionally the individual subclasses can 
# be easily parameterized in the future if needed.
#
# Due to the above reason this class is currently just a stub.
# 
class python::virtual {

    include python::params

    # Example virtual resources 
    #@package { 'python-python-something':
    #    ensure => installed,
    #    name => $::python::params::python_something_package_name,
    #    tag => [ 'python-service-a', 'python-service-b' ],
	#}

}
