terraform {
  required_version = ">= 0.12"
}
provider "aws" {
  region  = "eu-west-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-peromero"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  
}