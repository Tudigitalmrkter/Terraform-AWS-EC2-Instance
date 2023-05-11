# This file declares all the variables

# Variables for provider 
variable "instance_region" {
  type = "string"
}

variable "instance_profile" {
  type = "string"
}

variable "instance_name" {
  description = "value of the name tag for the EC2 instance"
  type = string
  default = "linux2023"
}

variable "instance_auth" {
  type = "string"
  sensitive = true
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type"
  type = string
  default = "t2.micro"
}