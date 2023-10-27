output "custum_vpc_id_hg" {
  description = "VPC ID of the custum vpc"
  value       = module.vpc-new.custum_vpc_id
}

output "custum_igw_id_hg" {
  description = "id of custum IGW"
  value       = module.vpc-new.custum_igw_id
}

output "public_subnet_ids_hg" {
  description = "list of public subnet ids"
  value       = module.vpc-new.public_subnet_ids
}

output "private_subnet_ids_hg" {
  description = "list of private subnet ids"
  value       = module.vpc-new.private_subnet_ids
}

output "custum_nat_id1_hg" {
  description = "id of NAT IGW"
  value       = module.vpc-new.custum_nat_id1
}
output "custum_nat_id2_hg" {
  description = "id of NAT IGW"
  value       = module.vpc-new.custum_nat_id2
}
output "Public_routtab_id_hg" {
  description = "id_for public route table"
  value       = module.vpc-new.Public_routtab_id
}
output "Private_routtab_id1_hg" {
  description = "id_for private route table 1"
  value       = module.vpc-new.Private_routtab_id1
}
output "Private_routtab_id2_hg" {
  description = "id_for private route table 2"
  value       = module.vpc-new.Private_routtab_id2
}

output "web_sg_id_arch_hg" {
value =  module.asgnew.web_sg_id_arch
}

output "launch_template_arch_hg" {
value = module.asgnew.launch_template_arch
}
output "asg_detail_hg" {
value = module.asgnew.asg_detail
}
output "jump_server_sg_hg" {
  description = "sg id of jumpserver"
  value       = module.bastian_host.jump_server_sg
}
output "jump_server_id_hg" {
  description = "instance id of jumpserver"
  value       = module.bastian_host.jump_server_id
}

output "target_grp_hg" {
  description = "target group ARN"
value = module.alb_tg_arch.target_grp
}

output "alb_arc_hg" {
  description = "ALB ARN"
value = module.alb_tg_arch.alb_arc
}