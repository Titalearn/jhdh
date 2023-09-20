provider "aws" {
  region = "us-west-2"
  profile = "default"
}
resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.inst
}
tags = {
  Name = var.name
  env = "prod"
}

#We are passing variables bellow that represent the names

variable "ami" {
  type = string
  default = "ami-0f8e81a3da6e2510a"
}

variable "inst" {
  type = string
  default = "t2.micror"
}
variable "name" {
  type = string
  default = "FirstEC2"
}
