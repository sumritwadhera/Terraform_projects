# public route-table association

# #route table association
resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_subnets["us-east-1a"].id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_subnets["us-east-1b"].id
  route_table_id = aws_route_table.public_route_table.id
}

#route table association private 2
resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private_subnets["us-east-1a"].id
  route_table_id = aws_route_table.private_route_table1.id
}



#route table association
resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.private_subnets["us-east-1b"].id
  route_table_id = aws_route_table.private_route_table2.id
}
