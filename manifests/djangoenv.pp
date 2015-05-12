#
# == Class: python::djangoenv
#
# Setup an environment for django
#
# == Parameters
#
# [*virtualenv_use_pip*]
#   Use the pip provider for installing python virtualenv. Defaults to 'no'.
# [*ipython_use_pip*]
#   Use the pip provider for installing ipython. Defaults to 'no'.
#
class python::djangoenv
(
    $virtualenv_use_pip = 'no',
    $ipython_use_pip = 'no'
)
{
    include ::python
    include ::python::devel
    include ::python::mysql
    include ::python::imaging
    include ::python::crypto
    include ::gettext

    class { '::python::virtualenv':
        use_pip => $virtualenv_use_pip,
    }

    class { '::python::ipython':
        use_pip => $ipython_use_pip,
    }
}
