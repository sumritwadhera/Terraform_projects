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
 ############################# public servers ###########################
variable "public_server" {
  type        = list(string)
  description = "name of public server"
}
############################# security group for apache servers ##########################
variable "sg_webrs" {
  type = string
  description = "security group for apache servers"
  
}
############################# subnet ids ##########################
variable "subnet_id" {
  type = list(string)
  description = "subnet ids for the instance"
  
}

############################# instance profile name ##########################
variable "instance_profile_name" {
  type = string
  description = "instance profile name for ec2"
  
}


