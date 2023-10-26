resource "aws_iam_role" "iam_role_webrs" {
  name = var.ec2_to_s3_role
  assume_role_policy = file("./iam_webrs/assume_policy.json")

  
}

resource "aws_iam_instance_profile" "ec2_s3_profile" {
  name = var.ec2_s3_profile_ins
  role = aws_iam_role.iam_role_webrs.name
}