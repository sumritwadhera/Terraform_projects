resource "aws_instance" "public_instance1" {

  ami           = data.aws_ami.ubuntu22.id
  instance_type = var.instance_type_arch
  key_name      = var.key_name_arch
  vpc_security_group_ids  = [var.sg_webrs]
  subnet_id     = var.subnet_id[0]
  iam_instance_profile = var.instance_profile_name


  tags = {
    Name = var.public_server[0]
  }
  user_data  = base64encode(file("./webrs_instance/users_data1.sh"))
}


resource "aws_instance" "public_instance2" {

  ami           = data.aws_ami.ubuntu22.id
  instance_type = var.instance_type_arch
  key_name      = var.key_name_arch
  vpc_security_group_ids  = [var.sg_webrs]
  subnet_id     = var.subnet_id[1]
  iam_instance_profile = var.instance_profile_name


  tags = {
    Name = var.public_server[1]
  }
  user_data  = base64encode(file("./webrs_instance/users_data1.sh"))
}
