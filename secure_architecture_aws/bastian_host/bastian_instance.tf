resource "aws_instance" "jump_serv" {

  ami           = data.aws_ami.ubuntu22.id
  instance_type = var.instance_type_arch
  key_name      = var.key_name_arch
  subnet_id     = var.subnet_id
  vpc_security_group_ids  = [aws_security_group.jump_sg1.id]

  tags = {
    Name = var.jump_server
  }

  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("./sumritkey1.pem")
    host     = self.public_ip
  }
    provisioner "file" {
    source = "./sumritkey1.pem"
    destination = "/home/ubuntu/sumritkey1.pem"
    
  }
#     provisioner "local-exec" {
#     command = "scp -i ./sumritkey1.pem ./sumritkey1.pem ubuntu@${self.public_ip}"
    
#   }


# provisioner "remote-exec" {
#     inline = [
#       "sudo apt-get update",
#       "sudo apt install docker.io -y",
#       "touch abc.html"
#     ]
# }
  
}