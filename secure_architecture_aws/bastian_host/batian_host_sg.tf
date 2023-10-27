# Create a security group for the EC2 instance
resource "aws_security_group" "jump_sg1" {
  name        = "jump-sg"
  description = "Security group for web servers"
  vpc_id      = var.vpc-id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allow_all_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.allow_all_cidr]
  }
}