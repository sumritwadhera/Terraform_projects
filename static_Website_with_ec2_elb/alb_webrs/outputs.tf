output "dns_for_alb" {
  value = aws_lb.alb_prod.dns_name
}

output "arn_for_alb" {
  value = aws_lb.alb_prod.arn
}