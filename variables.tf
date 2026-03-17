variable "ssh_key_type" {
  type        = string
  default     = "ED25519"
  description = "The SSH Key Type: 'ED25519' or 'ECDSA'"
  validation {
    condition     = (var.ssh_key_type == "ED25519") || (var.ssh_key_type == "ECDSA")
    error_message = "Only keys of type 'ED25519' or 'ECDSA' supported"
  }
}

variable "ecdsa_curve" {
  type        = string
  description = "Name of the EC DSA Curve to use: 'P256', 'P384', or 'P521'"
  default     = null

  validation {
    condition     = (var.ecdsa_curve == null) || (var.ecdsa_curve == "P256") || (var.ecdsa_curve == "P384") || (var.ecdsa_curve == "P521")
    error_message = "Only curves 'P224', 'P256', 'P384', or 'P521' supported"
  }
}

