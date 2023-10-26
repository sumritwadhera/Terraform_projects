############################# iam role ###########################
variable "ec2_to_s3_role" {
  description = "role name for ec2 to access s3 bucket"
}

# ############################# path of image ###########################
variable "iam_role_policy_name" {
  description = "name of iam role policy  for ec2 to s3"
}
# ############################# instance_profile ###########################
variable "ec2_s3_profile_ins" {
  description = "instance profile for ec2"
}
