# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}


provider "aws" {
  region                   = "us-west-2"
  #shared_credentials_files = ["/home/ec2-user/.aws/credentials"]
  #profile                  = "default"  
  access_key = "my-access-key"
  secret_key = "my-secret-key"  
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0f1a5f5ada0e7da53" # Amazon Linux in us-west-2, update as per your region
  instance_type = "t2.micro"
}
