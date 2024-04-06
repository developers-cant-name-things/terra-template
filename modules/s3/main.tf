

module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "roit-bucket"

  force_destroy = true

  tags = {
    Owner = "Anton"
  }
}
