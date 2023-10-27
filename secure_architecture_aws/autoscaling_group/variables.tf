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

variable "vpc-id" {
    type = string
    description = "vpc used for security group"
  
}

############################# CIDR 0.0.0.0/0 ###########################
variable "allow_all_cidr" {
  type        = string
    description = "allow access to all"
}
 ############################# security group ports  ###########################
 variable "sg_ports_arch" {
    type = list(number)
    description = "list of ingress ports"
  }
############################# launch template name ###########################
  variable "asg_launch_temp_name" {
    type = string
    description = "name of asg template for private instances"
  }
  ############################# instance type ###########################
  variable "instance_type_arch" {
     type = string
    description = "instance type used"
  }
  ############################# key name ###########################
  variable "key_name_arch" {
     type = string
    description = "name of key used for instances"
  }

###################### subnets for ASG ########################################

variable "subnets_asg" {
    type = list(string)
    description = "list of subnets"
  
}

######################################## target arn #########################

variable "tg_arn_arch" {
  type = string
  description = "target_Arn of the target group"
  
}