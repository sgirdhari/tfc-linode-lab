module "linode" {
  source           = "https://github.com/sgirdhari/tfc-linode-lab.git"
  authorized_keys  = [var.ssh_public_key]
  type             = "g6-nanode-1"
  region           = "us-central"
  image            = "linode/ubuntu18.04"
  root_pass        = "Terra4ormr0x!"
}