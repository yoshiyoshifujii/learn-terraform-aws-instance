terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "aws-gatling-tools"
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-032d6db78f84e8bf5"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
