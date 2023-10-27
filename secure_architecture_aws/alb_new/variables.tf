variable "vpc-id" {
    type = string
    description = "vpc used for security group"
  
}
variable "sg_for_alb" {
   type = string
    description = "alb's security group"
}

variable "pubic_sub_alb" {
  type = list(string)
    description = "public subnet for alb"
}