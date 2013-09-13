class python {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_python', 'true') != 'false' {
    include python::install
}
}
