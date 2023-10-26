#####################public route table###################
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.arch_custum_vpc.id

  route {
    cidr_block = var.allow_all_cidr
    gateway_id = aws_internet_gateway.webrs_igw.id
  }


  tags = {
    Name = var.public_route_Tab
  }
}