terraform {
  required_version = ">= 1.0.0"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = ">= 1.0.0"
    }
  }
} 
module "linode" {
  source = "git::https://github.com/sgirdhari/tfc-linode-module.git"
   linode_token = var.linode_token
  authorized_keys  = [var.TF_VAR_ssh_public_key]
  authorized_users = ["terraformcloud"]
  type             = "g6-nanode-1"                                       # https://developers.linode.com/api/v4#operation/getLinodeTypes
  region           = "us-central"
  label            = "demo"
  image            = "linode/ubuntu18.04"
  root_pass        = "Terra4ormr0x!"
  stackscript_id   = "394412"
}

output "instance_ip" {
  value = "${module.linode.public_ip}"
}
