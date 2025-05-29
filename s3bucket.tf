resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-1234567890" # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}
