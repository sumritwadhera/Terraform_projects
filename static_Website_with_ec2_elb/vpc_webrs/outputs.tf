output "vpc_name" {
  value = aws_vpc.arch_custum_vpc.id
}
output "public_subnet_ids" {
  description = "list of public subnet ids"
  value       = values(aws_subnet.public_subnets)[*].id
}
output "out_igw" {
  description = "igw id"
  value       = aws_internet_gateway.webrs_igw.id
}
output "web_sg_id_arch" {
value = aws_security_group.web_sg.id
}

output "custum_sg_id" {
  description = "sg ID of the custum vpc"
  value       = aws_security_group.web_sg.id
}
