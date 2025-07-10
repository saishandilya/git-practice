terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default" # or your profile name if using one
}

resource "aws_instance" "myec2instance" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  key_name               = "devops-practice"
  vpc_security_group_ids = ["sg-0123456789abcdef0"]

  tags = {
    Name = "MyEC2Instance"
  }
}
