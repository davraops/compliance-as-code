provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "compliance-as-code-demo"
  acl    = "private"

  tags = {
    Name        = "compliance-as-code-demo"
    Environment = "Dev"
  }
}
