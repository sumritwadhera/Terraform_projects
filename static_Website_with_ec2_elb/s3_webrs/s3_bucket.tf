resource "aws_s3_bucket" "simples3_for_img" {
  bucket = var.unique_bucket_name
force_destroy = true
  
}


resource "aws_s3_object" "object" {
  bucket = var.unique_bucket_name
  key    = var.image_upload
  source = var.path_to_imgs3
depends_on = [ aws_s3_bucket.simples3_for_img ]
}