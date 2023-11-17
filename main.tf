provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-gh-demo"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_sqs_queue" "terraform-gh-demo" {
  name = "terraform-gh-demo"
}
