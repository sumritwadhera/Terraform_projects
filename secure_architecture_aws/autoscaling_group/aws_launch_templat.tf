

resource "aws_launch_template" "launch_template_Arch" {
  name = var.asg_launch_temp_name

#   block_device_mappings {
#     device_name = "/dev/sdf"

#     ebs {
#       volume_size = 10
#     }
#   }
  # placement {
  #   availability_zone = "us-west-2a"
  # }

  instance_type          = var.instance_type_arch
  image_id               = data.aws_ami.ubuntu22.id
  key_name               = var.key_name_arch
#   vpc_security_group_ids = [aws_security_group.web_sg.id] # Replace with your security group ID(s)
  vpc_security_group_ids = [aws_security_group.web_sg.id] # Replace with your security group ID(s)

# user_data =base64encode(<<-EOF
#               #!/bin/bash
#                # Update the package list and install Apache2
#               sudo apt-get update
#               sudo apt-get install -y apache2

#               # Start Apache2
#               sudo systemctl start apache2

#               # Enable Apache2 to start on boot
#               sudo systemctl enable apache2
              
#               # Create an HTML file
#               echo "<html><body>" > /var/www/html/index.html
#               echo "Private IP Address: \$(curl http://169.254.169.254/latest/meta-data/local-ipv4)" >> /var/www/html/index.html
#               echo "</body></html>" >> /var/www/html/index.html
#               EOF
#               )


  user_data  = base64encode(file("./autoscaling_group/userdata.sh"))
}



