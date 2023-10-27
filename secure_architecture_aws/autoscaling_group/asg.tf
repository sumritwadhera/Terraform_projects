resource "aws_autoscaling_group" "asg_Arch" {
  desired_capacity   = var.desired_size
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = aws_launch_template.launch_template_Arch.id
    version = "$Latest"
  }

  # Specify the IDs of your private subnets
  vpc_zone_identifier = var.subnets_asg
#   [
#     aws_subnet.private_subnets["us-east-1a"].id
#     ,aws_subnet.private_subnets["us-east-1b"].id

    
#     # Add more private subnet IDs as needed
#   ]

target_group_arns = [var.tg_arn_arch]
}

