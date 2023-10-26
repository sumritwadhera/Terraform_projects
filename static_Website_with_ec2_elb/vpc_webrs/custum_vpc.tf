resource "aws_vpc" "arch_custum_vpc" {
  cidr_block           =  var.custum_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_custum_identifier
  }

}