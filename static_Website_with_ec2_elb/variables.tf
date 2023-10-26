variable "region_name" {
  description = "value of region used for the resources"
}

variable "custum_cidr" {
  description = "CIDR for creating vpc"
}

variable "vpc_custum_identifier" {
  description = "Name of the vpc"
}

############### for public subnet ###############################
variable "public_subnet_map" {
  type        = map(string)
  description = "map of AZ's and CIDR"
}

############### internet gateway ###############################

variable "custum_igw" {
  description = "Name of internet gateway"

}

############### routetable_name ###############################

variable "public_route_Tab" {
  description = "Name of public route table"

}

############### all cidrs ###############################

variable "allow_all_cidr" {
  description = "allow access to anyone from internet"

}

############################# security group ports  ###########################
variable "sg_ports_arch" {
  type        = list(number)
  description = "list of ingress ports"
}

############################# bucket name ###########################
variable "unique_bucket_name" {
  description = "unique name of bucket"
}

############################# image name ###########################
variable "image_upload" {
  description = "name of image"
}

############################# path of image ###########################
variable "path_to_imgs3" {
  description = "path for the image"
}
############################# iam role ###########################
variable "ec2_to_s3_role" {
  description = "role name for ec2 to access s3 bucket"
}

# ############################# path of image ###########################
variable "iam_role_policy_name" {
  description = "name of iam role policy  for ec2 to s3"
}

# ############################# instance_profile ###########################
variable "ec2_s3_profile_ins" {
  description = "instance profile for ec2"
}

############################# instance type ###########################
variable "instance_type_arch" {
  type        = string
  description = "instance type used"
}
############################# key name ###########################
variable "key_name_arch" {
  type        = string
  description = "name of key used for instances"
}
############################# public servers ###########################
variable "public_server" {
  type        = list(string)
  description = "name of public server"
}

# variable "subnet_id" {
#   type = string

# }


