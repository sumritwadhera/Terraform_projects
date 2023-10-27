
############### for custum VPC ###############################
variable "custum_cidr" {
    type        = string
    description = "CIDR for custum vpc."
}

variable "vpc_custum_identifier" {
    type = string
    description = "Name of VPC"
}

############### for public subnet ###############################
variable "public_subnet_map" {
    type        = map(string)
    description = "map of AZ's and CIDR"
}
############### for private subnet ###############################
variable "private_subnet_map" {
    type        = map(string)
    description = "map of AZ's and CIDR"
}

# ############### for internet gatway ###############################
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




