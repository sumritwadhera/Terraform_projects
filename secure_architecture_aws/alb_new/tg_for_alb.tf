resource "aws_lb_target_group" "alb_tg" {
    name     = "tf-example-lb-tg"
    port     = 80
    protocol = "HTTP"
    target_type = "instance"
    vpc_id   = var.vpc-id
}

