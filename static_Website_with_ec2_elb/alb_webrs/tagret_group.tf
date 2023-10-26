resource "aws_lb_target_group" "alb_tg" {
    name     = "tf-example-lb-tg"
    port     = 80
    protocol = "HTTP"
    target_type = "instance"
    vpc_id   = var.vpc-id
}

resource "aws_alb_target_group_attachment" "tg_attach" {
  target_group_arn = aws_lb_target_group.alb_tg.arn
  port = 80

  count = length(var.target_id_map)

  target_id = var.target_id_map[count.index]
}



