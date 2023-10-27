module "vpc-new" {
  source                = "../secure_architecture_aws/custum_vpc"
  custum_cidr           = var.custum_cidr
  vpc_custum_identifier = var.vpc_custum_identifier
  custum_igw            = var.custum_igw
  public_subnet_map     = var.public_subnet_map
  private_subnet_map    = var.private_subnet_map
  eip_name              = var.eip_name
  allow_all_cidr        = var.allow_all_cidr
  public_route_Teb      = var.public_route_Teb
  private_route_Tab1    = var.private_route_Tab1
  private_route_Tab2    = var.private_route_Tab2
}


module "asgnew" {
  source               = "../secure_architecture_aws/autoscaling_group"
  vpc-id               = module.vpc-new.custum_vpc_id
  allow_all_cidr       = var.allow_all_cidr
  sg_ports_arch        = var.sg_ports_arch
  asg_launch_temp_name = var.asg_launch_temp_name
  instance_type_arch   = var.instance_type_arch
  key_name_arch        = var.key_name_arch
  max_size             = var.max_size
  min_size             = var.min_size
  desired_size         = var.desired_size
  subnets_asg          = module.vpc-new.private_subnet_ids
  tg_arn_arch           = module.alb_tg_arch.target_grp
}

module "bastian_host" {
  source               = "../secure_architecture_aws/bastian_host"
  vpc-id               = module.vpc-new.custum_vpc_id
  allow_all_cidr       = var.allow_all_cidr
  instance_type_arch   = var.instance_type_arch
  key_name_arch        = var.key_name_arch
  jump_server          = var.jump_server
  subnet_id            = module.vpc-new.public_subnet_ids[0]

}

module "alb_tg_arch" {
  source = "../secure_architecture_aws/alb_new"
  vpc-id = module.vpc-new.custum_vpc_id
  sg_for_alb = module.asgnew.web_sg_id_arch
  pubic_sub_alb = module.vpc-new.public_subnet_ids

  
}