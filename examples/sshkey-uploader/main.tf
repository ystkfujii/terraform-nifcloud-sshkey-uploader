#####
# Provider
#
provider "nifcloud" {
  region = "jp-west-1"
}

#####
# Module
#
module "sshkey_uploader" {
  source = "../../"

  key_name = "deployerkey"
}

# Comment out if you want to store locally
//resource "null_resource" "store_private_key" {
//  triggers = {
//    private_key = module.sshkey_uploader.private_key
//  }
//
//  provisioner "local-exec" {
//    command = "echo '${module.sshkey_uploader.private_key}' > ${path.root}/key ; chmod 0600 ${path.root}/key"
//  }
//}