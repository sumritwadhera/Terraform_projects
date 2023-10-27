# Create an Elastic IP for the NAT Gateway
resource "aws_eip" "nat_eip" {
    count = 2
    tags = {
      Name = var.eip_name[count.index]
    }
}

# #  # Create an Elastic IP for the NAT Gateway
# # resource "aws_eip" "nat_eip" {
# # }




# output "elasticips" {
#     value = aws_eip.nat_eip[*].id
  
# }


# # output "map_for_natgw" {
# #     value = zipmap(aws_eip.nat_eip[*].id,values(aws_subnet.public_subnets)[*].id)
  
# # }
