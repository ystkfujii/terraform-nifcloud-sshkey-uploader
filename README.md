# terraform-nifcloud-sshkey-uploader

Terraform module to generate and upload sshkey.

Included resource
- nifcloud_key_pair

## Usage

There are examples included in the examples folder but simple usage is as follows:

```hcl
provider "nifcloud" {
  region = "jp-west-1"
}

# Module
module "sshkey_uploader" {
  source = "../../"

  key_name = "deployerkey"
}
```

Then perform the following commands on the root folder:

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure

## Inputs

| Name     | Description                                          | Type   | Default |
| -------- | ---------------------------------------------------- | ------ | ------- |
| key_name | The key name of the Key Pair to use for the instance | string |         |

## Outputs

| Name        | Description               |
| ----------- | ------------------------- |
| public_key  | The generated public key  |
| private_key | The generated private key |


## Requirements

Before this module can be used on a project, you must ensure that the following pre-requisites are fulfilled:

1. Terraform are [installed](#software-dependencies) on the machine where Terraform is executed.
2. The Nifcloud Account you execute the module with has the right permissions.
    - You can set environment variable `NIFCLOUD_ACCESS_KEY_ID` and `NIFCLOUD_SECRET_ACCESS_KEY`

### Software Dependencies

- [Terraform](https://www.terraform.io/downloads.html) 1.3.7
- [Terraform Provider for Nifcloud](https://registry.terraform.io/providers/nifcloud/nifcloud/latest) 1.7.0

## Author

- Yoshitaka Fujii ([@ystkfujii](https://github.com/ystkfujii))