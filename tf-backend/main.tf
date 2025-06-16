terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.1"
    }
  }
  backend "s3" {
    bucket = "demo-bucket-36e9510d0f76bd12"
    key = "backend.tfstate"
    region = "eu-north-1"
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "myserver" {
  ami = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.nano"

  tags = {
    Name = "SampleServer"
  }
}