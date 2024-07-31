terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance"
    testing = "true"
  }
  
}


resource "aws_instance" "app_server_2" {
  ami = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance_2"
    testing = "true"
  }
  
}

