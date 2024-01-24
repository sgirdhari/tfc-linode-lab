# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "linode" {
  token = var.linode_token
}

variable "root_pass" {
  description = "Root password for instances."
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "The SSH public key."
  type        = string
}

variable "linode_token" {
  description = "The API token for Linode."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Akamai region"
  default     = "us-Central-1"
}

variable "instance_type" {
  description = "Type of node instance to provision"
  default     = "8gb Linode"
}

variable "instance_name" {
  description = "Node instance name"
  default     = "Provisioned by Terraform"
}

