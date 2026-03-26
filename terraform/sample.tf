provider "aws" {
  region = "ap-south-1"
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
  key_name = "id_rsa"
  vpc_security_group_ids = [ "sg-0882b4fee72084654", ]
  availability_zone = "ap-south-1a"
  tags = {
    name  = "suraj"
    Name = "myinstance"
    Environment = "dev"
  }
}

variable "ami_id" {
  default = "ami-0f559c3642608c138"
  description = "ap-south-1_ami"
}
variable "instance_type_mumbai" {
  default = "t3.micro"
}

output "public_ip" {
  value = aws_instance.myinstance.public_ip
}