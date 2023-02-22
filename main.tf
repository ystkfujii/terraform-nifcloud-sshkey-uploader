resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
}

locals {
  public_key  = tls_private_key.ssh_key.public_key_openssh
  private_key = tls_private_key.ssh_key.private_key_pem
}

resource "nifcloud_key_pair" "this" {
  key_name   = var.key_name
  public_key = base64encode(local.public_key)
}
