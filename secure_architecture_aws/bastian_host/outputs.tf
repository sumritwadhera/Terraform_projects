output "jump_server_sg" {
  description = "sg id of jumpserver"
  value       = aws_security_group.jump_sg1.id
}
output "jump_server_id" {
  description = "instance id of jumpserver"
  value       = aws_instance.jump_serv.id
}