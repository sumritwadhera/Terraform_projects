variable "region_name" {
  description = "value of region used for the resources"
}
############### for vpc ###############################

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
     description = "Name of public route table"

}

############################# security group ports  ###########################
 variable "sg_ports_arch" {
    type = list(number)
    description = "list of ingress ports"
  }

