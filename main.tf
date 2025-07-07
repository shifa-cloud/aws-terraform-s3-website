terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "shifa_bucket" {
  bucket = "shifa-bucket-1751700467"  # Your exact bucket name from screenshots
  force_destroy = true
}

resource "aws_s3_bucket_website_configuration" "hosting" {
  bucket = aws_s3_bucket.shifa_bucket.id
  index_document { suffix = "index.html" }
}

output "website_url" {
  value = "http://${aws_s3_bucket.shifa_bucket.bucket}.s3-website-us-east-1.amazonaws.com"
}