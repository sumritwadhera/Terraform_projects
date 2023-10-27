variable "vpc-id" {
    type = string
    description = "vpc used for security group"
  
}
############################# CIDR 0.0.0.0/0 ###########################
variable "allow_all_cidr" {
  type        = string
    description = "allow access to all"
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
  ############################# jump_server ###########################
variable "jump_server" {
  type        = string
  description = "name of jump_server"
}

variable "subnet_id" {
  type = string
  
}