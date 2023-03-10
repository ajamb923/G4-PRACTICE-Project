
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


#VPC
resource "aws_vpc" "joane-vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}


#INSTANCE
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type[0]
  subnet_id = aws_subnet.pub-sub.id

  tags = {
    Name = var.instance_name
  }
}


#SUBNET
resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.joane-vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "pub-sub1"
  }
}