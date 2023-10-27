resource "aws_nat_gateway" "my_nat_gateway1" {
  allocation_id = aws_eip.nat_eip[0].id
  subnet_id     = aws_subnet.public_subnets["us-east-1a"].id
}


resource "aws_nat_gateway" "my_nat_gateway2" {
  allocation_id = aws_eip.nat_eip[1].id
  subnet_id     = aws_subnet.public_subnets["us-east-1b"].id
}



