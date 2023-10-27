



# # Create a public subnet
# resource "aws_subnet" "public_subnet_1" {
#   vpc_id                  = aws_vpc.sumrit_custum_vpc.id
#   cidr_block              = "10.0.1.0/24"
#   availability_zone       = "us-east-1a"
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "public_subnet_1"
#   }
# }

# # Create a public subnet
# resource "aws_subnet" "public_subnet_2" {
#   vpc_id                  = aws_vpc.sumrit_custum_vpc.id
#   cidr_block              = "10.0.2.0/24"
#   availability_zone       = "us-east-1b"
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "public_subnet_2"
#   }
# }

# # Create a private subnet
# resource "aws_subnet" "private_subnet_1" {
#   vpc_id            = aws_vpc.sumrit_custum_vpc.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "private_subnet_1"
#   }
# }

# # Create a private subnet
# resource "aws_subnet" "private_subnet_2" {
#   vpc_id            = aws_vpc.sumrit_custum_vpc.id
#   cidr_block        = "10.0.4.0/24"
#   availability_zone = "us-east-1b"

#   tags = {
#     Name = "private_subnet_2"
#   }
# }


# #create internet gateway
# resource "aws_internet_gateway" "sumrit_igw" {
#   vpc_id = aws_vpc.sumrit_custum_vpc.id

#   tags = {
#     Name = "sumrit_igw1"
#   }
# }

# resource "aws_route_table" "public_route_table" {
#   vpc_id = aws_vpc.sumrit_custum_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.sumrit_igw.id
#   }


#   tags = {
#     Name = "exampublic_route_table_1"
#   }
# }

# #route table association
# resource "aws_route_table_association" "public_1" {
#   subnet_id      = aws_subnet.public_subnet_1.id
#   route_table_id = aws_route_table.public_route_table.id
# }
# resource "aws_route_table_association" "public_2" {
#   subnet_id      = aws_subnet.public_subnet_2.id
#   route_table_id = aws_route_table.public_route_table.id
# }


# ///////////////////////////////////////////////////////////////////////////////////////

# # Create an Elastic IP for the NAT Gateway
# resource "aws_eip" "nat_eip1" {
# }

# # Create the NAT Gateway using the Elastic IP 1 for public subnet1
# resource "aws_nat_gateway" "my_nat_gateway1" {
#   allocation_id = aws_eip.nat_eip1.id
#   subnet_id     = aws_subnet.public_subnet_1.id
# }

# # Create an Elastic IP for the NAT Gateway
# resource "aws_eip" "nat_eip2" {
# }

# # Create the NAT Gateway using the Elastic IP 1 for public subnet1
# resource "aws_nat_gateway" "my_nat_gateway2" {
#   allocation_id = aws_eip.nat_eip2.id
#   subnet_id     = aws_subnet.public_subnet_2.id
# }

# resource "aws_route_table" "private_route_table1" {
#   vpc_id = aws_vpc.sumrit_custum_vpc.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.my_nat_gateway1.id
#   }


#   tags = {
#     Name = "private_route_table_1"
#   }
# }

# #route table association private 2
# resource "aws_route_table_association" "private_1" {
#   subnet_id      = aws_subnet.private_subnet_1.id
#   route_table_id = aws_route_table.private_route_table1.id
# }





# resource "aws_route_table" "private_route_table2" {
#   vpc_id = aws_vpc.sumrit_custum_vpc.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.my_nat_gateway2.id
#   }


#   tags = {
#     Name = "private_route_table_2"
#   }
# }

# #route table association
# resource "aws_route_table_association" "private_2" {
#   subnet_id      = aws_subnet.private_subnet_2.id
#   route_table_id = aws_route_table.private_route_table2.id
# }




