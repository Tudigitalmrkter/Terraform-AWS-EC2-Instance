
terraform {
  required_providers {
    aws = {
      source = "harshicorp/aws"
    }
  }
}

# AWS Key Pair
resource "aws_key_pair" "dev_auth" {
  key_name   = "dev_keypair"
  public_key = var.instance_auth
}

# Configue AWS Provider 
provider "aws" {
    profile = var.instance_profile
    region =  var.instance_region
}

# Configure Resources
resource "aws_instance" "linux_server" {
  ami = "ami-02f3f602d23f1659d"
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}
