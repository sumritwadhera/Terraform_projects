output "custum_vpc_id" {
  description = "VPC ID of the custum vpc"
  value       = aws_vpc.arch_custum_vpc.id
}

output "public_subnet_ids" {
  description = "list of public subnet ids"
  value       = values(aws_subnet.public_subnets)[*].id
}

output "private_subnet_ids" {
  description = "list of private subnet ids"
  value       = values(aws_subnet.private_subnets)[*].id
}

output "custum_igw_id" {
  description = "id of custum IGW"
  value       = aws_internet_gateway.arch_igw.id
}

output "custum_nat_id1" {
  description = "id of NAT IGW"
  value       = aws_nat_gateway.my_nat_gateway1.id
}
output "custum_nat_id2" {
  description = "id of NAT IGW"
  value       = aws_nat_gateway.my_nat_gateway2.id
}

output "Public_routtab_id" {
  description = "id_for public route table"
  value       = aws_route_table.public_route_table.id
}
output "Private_routtab_id1" {
  description = "id_for private route table 1"
  value       = aws_route_table.private_route_table1.id
}
output "Private_routtab_id2" {
  description = "id_for private route table 2"
  value       = aws_route_table.private_route_table2.id
}

