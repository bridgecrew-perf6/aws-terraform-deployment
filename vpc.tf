# Resource:aws_vpc
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "main" {
  # CIDR block for the VPC
  cidr_block = "192.168.0.0/16"

  # How to make your instance shared on the host.
  instance_tenancy = "default"

  # This is required for EKS. it enable/disable DNS support in the VPC
  enable_dns_support = true

  # This is required for EKS. it enable/disable DNS hostnames in the VPC
  enable_dns_hostnames = true

  # This will enable/disable ClassicLink for the VPC
  enable_classiclink = false

  # This will enable/disable ClassicLink DNS support for the VPC
  enable_classiclink_dns_support = false

  # Requests an Amazon-provided IPv6 CIDR block with /56 prifix
  assign_generated_ipv6_cidr_block = false

  # A map of tags to assign to resource
  tags = {
    Name = "main"
  }
}
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id."
  # Setting an output value as sensitive prevents Terraform from showing its value in plan and apply
  sensitive = false
}