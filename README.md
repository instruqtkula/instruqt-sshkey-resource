# terraform-instruqt-sshkey

A wrapper module to generate an SSH key and export the public
and private parts, for use in an Instruqt
[custom resource](https://docs.instruqt.com/sandboxes/manage/custom-resources)

**NOTE**: This is not an official product of Instruqt, and it is
not officially supported.

## A note on security best practices
Normally it is not recommended to store private values (like an
SSH private key) in Terraform state, however in our use case with
Instruqt Custom Resources, this module will be ran once, per track
startup, and the state will be thrown away.
