# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "public_ip" {
  description = "The public IP address for the Linode instance"
  value       = "${ module.linode.instance_ip_address}"
}

output "root_password" {
  description = "The password for the root user on the Linode instance"
  value       = "${var.root_pass}"
}
