


resource "aws_subnet" "public_subnets" {
  vpc_id                  = aws_vpc.arch_custum_vpc.id
  map_public_ip_on_launch = true
for_each = var.public_subnet_map
  cidr_block              = each.value
  availability_zone       = each.key

  tags = {
    Name = "${each.key}-public_subnet"
  }
}

resource "aws_subnet" "private_subnets" {
  vpc_id                  = aws_vpc.arch_custum_vpc.id
 for_each = var.private_subnet_map
  cidr_block              = each.value
  availability_zone       = each.key

  tags = {
    Name = "${each.key}-private_subnet"
  }
}