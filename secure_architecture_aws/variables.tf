variable "region_name" {
  type        = string
  description = "region name for deploying these services"
}

############### for custum VPC ###############################
variable "custum_cidr" {
  type        = string
  description = "CIDR for custum vpc."
}

variable "vpc_custum_identifier" {
  type        = string
  description = "Name of VPC"
}

# ############### for public subnet ###############################
variable "public_subnet_map" {
  type        = map(string)
  description = "map of AZ's and CIDR"

}
# ############### for private subnet ###############################
variable "private_subnet_map" {
  type        = map(string)
  description = "map of AZ's and CIDR"
}

############### for internet gatway ###############################
variable "custum_igw" {
  type        = string
  description = "Name of Internet gateway for custum vpc"
}

############################# Elastic IPs ###########################
variable "eip_name" {
  type        = list(string)
  description = "list of eips for NAT GW"
}

############################# CIDR 0.0.0.0/0 ###########################
variable "allow_all_cidr" {
  type        = string
  description = "allow access to all"
}

#############################Public route table Name ##########################################

variable "public_route_Teb" {
  type        = string
  description = "Name of public routetable"
}

#############################Private  route table Name ##########################################

variable "private_route_Tab1" {
  type        = string
  description = "Name of private routetable 1"
}

variable "private_route_Tab2" {
  type        = string
  description = "Name of private routetable 2"
}

############################# Auto scaling group size parameters ##########################################

variable "max_size" {
  type        = number
  description = "maximum number of instances"
}

variable "min_size" {
  type        = number
  description = "minimum number of instances"
}

variable "desired_size" {
  type        = number
  description = "desired number of instances"
}


############################# security group ports  ###########################
variable "sg_ports_arch" {
  type        = list(number)
  description = "list of ingress ports"
}
############################# launch template name ###########################
variable "asg_launch_temp_name" {
  type        = string
  description = "name of asg template for private instances"
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

############################# jump_server ###########################
variable "jump_server" {
  type        = string
  description = "name of jump_server"
}

# ######################################## target arn #########################

# variable "tg_arn_arch" {
#   type = string
#   description = "target_Arn of the target group"
  
# }