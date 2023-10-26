#create internet gateway
resource "aws_internet_gateway" "webrs_igw" {
  vpc_id = aws_vpc.arch_custum_vpc.id

  tags = {
    Name = var.custum_igw
  }
}