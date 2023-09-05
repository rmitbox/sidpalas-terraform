terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0eb260c4d5475b901" #  Ubuntu, 22.04 LTS // eu-west-2
  instance_type = "t2.micro"
}
