output "target_grp" {
value = aws_lb_target_group.alb_tg.arn
}

output "alb_arc" {
value = aws_lb.alb_prod.arn
}