# public route-table association

# #route table association
# resource "aws_route_table_association" "public_1" {
#   subnet_id      = aws_subnet.public_subnets["us-east-1a"].id
#   route_table_id = aws_route_table.public_route_table.id
# }
resource "aws_route_table_association" "public_associate" {
   for_each      = aws_subnet.public_subnets
  subnet_id    = each.value.id
  route_table_id = aws_route_table.public_route_table.id
}