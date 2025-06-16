terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-north-1"
}

//EC2 AMI
data "aws_ami" "name" {
    most_recent = true
    owners = ["amazon"]
}
output "aws_ami" {
  value = data.aws_ami.name.id
}

//Security Groups
data "aws_security_group" "name" {
  tags = {
    myserver = "http"
  }
}
output "security_group" {
  value = data.aws_security_group.name.id
}

//VPC
data "aws_vpc" "name" {
  tags = {
    ENV = "PROD"
    Name = "my-vpc"
  }
}
output "vpc_id" {
  value = data.aws_vpc.name.id
}


//Availability Zones
data "aws_availability_zones" "names" {
  state = "available"
}
output "aws_zones" {
  value = data.aws_availability_zones.names
}

//To get the current account details
data "aws_caller_identity" "name" {
}
output "caller_info" {
  value = data.aws_caller_identity.name
}

//To know the region name where you are currently working
data "aws_region" "name" {
}
output "aws_region" {
  value = data.aws_region.name
}


resource "aws_instance" "myserver" {
  ami = data.aws_ami.name.id
  instance_type = "t3.nano"

  tags = {
    Name = "SampleServer"
  }
}
