provider "aws" {
  region = var.rg
}
terraform {
  backend "s3" {
    bucket = "terraform12123"
    region = "ap-south-1"
    key = "tfstatefile"
  }
}
resource "aws_instance" "myinstance" {
  ami = var.ami_id
  instance_type = var.instance_type_mumbai
  key_name = var.key_name
  vpc_security_group_ids = [ var.mysg ]
  availability_zone = var.az
  tags = {
    name  = "suraj"
    Name = "myinstance"
    Environment = "dev"
  }
}


