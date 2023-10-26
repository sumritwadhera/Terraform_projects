variable "vpc-id" {
    type = string
    description = "vpc used for security group"
  
}

variable "target_id_map" {
  type    = list(string)
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