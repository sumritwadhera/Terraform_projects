output "web_sg_id_arch" {
value = aws_security_group.web_sg.id
}

output "launch_template_arch" {
value = aws_launch_template.launch_template_Arch.id
}
output "asg_detail" {
value = aws_autoscaling_group.asg_Arch.id
}