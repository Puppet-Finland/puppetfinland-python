class python {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_python') != 'false' {
    include python::install
}

}
