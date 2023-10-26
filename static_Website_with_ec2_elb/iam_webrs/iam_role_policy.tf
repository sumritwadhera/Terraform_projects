resource "aws_iam_role_policy" "custum_role_policy" {
  name = var.iam_role_policy_name
  role = aws_iam_role.iam_role_webrs.id
  policy = file("./iam_webrs/s3_access_get_obj_policy.json")
}