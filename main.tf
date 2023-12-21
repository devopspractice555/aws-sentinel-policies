terraform {
  cloud {
    organization = "aws-practice1"

    workspaces {
      name = "aws-sentinel-policies"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = "ami-0a0f1259dd1c90938"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}