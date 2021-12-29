resource "aws_s3_bucket" "terraform" {
  bucket = "${var.s3_bucket}"
  acl    = "private"
  versioning {
    enabled = true
  }
}