output "instance_id_list" {
  value = [aws_instance.public_instance1.id,aws_instance.public_instance2.id]
}