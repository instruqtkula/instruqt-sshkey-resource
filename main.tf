resource "tls_private_key" "this" {
  algorithm   = var.ssh_key_type
  ecdsa_curve = var.ecdsa_curve
}
