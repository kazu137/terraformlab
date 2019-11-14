provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "example" {
ami = data.aws_ami.amazon_linux_latest.id
instance_type = "t2.micro"
tags = {
Name = "Module 3 Lab 1"
User = "lab-user-X"
}
}
data "aws_ami" "amazon_linux_latest" {
most_recent = true
owners = ["amazon"]
filter {
name = "name"
values = ["amzn-ami-hvm-*"]
}

filter {
name = "virtualization-type"
values = ["hvm"]
}
}