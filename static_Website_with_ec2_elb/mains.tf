module "custum_vpc_mod" {
  source                = "../Terraform_projects/vpc_webrs"
  region_name           = var.region_name
  custum_cidr           = var.custum_cidr
  vpc_custum_identifier = var.vpc_custum_identifier
  public_subnet_map     = var.public_subnet_map
  custum_igw            = var.custum_igw
  allow_all_cidr        = var.allow_all_cidr
  public_route_Tab      = var.public_route_Tab
  sg_ports_arch         = var.sg_ports_arch
}


module "s3_ec2_img" {
  source             = "../Terraform_projects/s3_webrs"
  unique_bucket_name = var.unique_bucket_name
  image_upload       = var.image_upload
  path_to_imgs3      = var.path_to_imgs3
}

module "iam_role_ec2_s3" {
  source               = "../Terraform_projects/iam_webrs"
  ec2_to_s3_role       = var.ec2_to_s3_role
  iam_role_policy_name = var.iam_role_policy_name
  ec2_s3_profile_ins   = var.ec2_s3_profile_ins
}

module "instance_public" {
  source                = "../Terraform_projects/webrs_instance"
  sg_webrs              = module.custum_vpc_mod.custum_sg_id
  instance_type_arch    = var.instance_type_arch
  key_name_arch         = var.key_name_arch
  public_server         = var.public_server
  subnet_id             = module.custum_vpc_mod.public_subnet_ids
  instance_profile_name = module.iam_role_ec2_s3.instance_prf_name
  depends_on            = [module.s3_ec2_img]
}

module "alb_mod" {
  source = "../Terraform_projects/alb_webrs"
  vpc-id = module.custum_vpc_mod.vpc_name
  target_id_map = module.instance_public.instance_id_list
  sg_webrs              = module.custum_vpc_mod.custum_sg_id
   subnet_id             = module.custum_vpc_mod.public_subnet_ids
}


