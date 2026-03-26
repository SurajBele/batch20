provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "myinstance" {
  ami = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  key_name = "id_rsa"
  vpc_security_group_ids = [ "sg-0882b4fee72084654", ]
  availability_zone = "ap-south-1a"
  tags = {
    name  = "suraj"
    Name = "myinstance"
    Environment = "dev"
  }
}
