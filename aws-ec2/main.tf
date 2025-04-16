terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.1"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "myserver" {
  ami = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.nano"

  tags = {
    Name = "SampleServer"
  }
}