resource "aws_lb" "alb_prod" {
    name               = "alb-arch"
    internal           = false
    load_balancer_type = "application"
    security_groups    = [var.sg_for_alb]
    subnets            = var.pubic_sub_alb
}