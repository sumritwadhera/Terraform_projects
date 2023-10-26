output "custum_vpc_name" {
  value = module.custum_vpc_mod.vpc_name

}

output "public_subnets_id" {
  description = "list of public subnet ids"
  value       = module.custum_vpc_mod.public_subnet_ids
}

output "internet_gateway_id" {
  description = "internet gateway id for vpc"
  value       = module.custum_vpc_mod.out_igw
}

output "security_group_for_instances" {
  value = module.custum_vpc_mod.web_sg_id_arch
}


output "dns_for_alb_webrs" {
  value = module.alb_mod.dns_for_alb
}

output "arn_for_alb_webrs" {
  value = module.alb_mod.arn_for_alb
}
