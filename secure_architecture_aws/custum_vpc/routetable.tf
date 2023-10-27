
#####################public route table###################
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.arch_custum_vpc.id

  route {
    cidr_block = var.allow_all_cidr
    gateway_id = aws_internet_gateway.arch_igw.id
  }


  tags = {
    Name = var.public_route_Teb
  }
}

# #####################private route table###################

resource "aws_route_table" "private_route_table1" {
  vpc_id = aws_vpc.arch_custum_vpc.id

  route {
    cidr_block     = var.allow_all_cidr
    nat_gateway_id = aws_nat_gateway.my_nat_gateway1.id
  }


  tags = {
    Name = var.private_route_Tab1
  }
}



resource "aws_route_table" "private_route_table2" {
  vpc_id = aws_vpc.arch_custum_vpc.id

  route {
    cidr_block     = var.allow_all_cidr
    nat_gateway_id = aws_nat_gateway.my_nat_gateway2.id
  }


  tags = {
    Name = var.private_route_Tab2
  }
}