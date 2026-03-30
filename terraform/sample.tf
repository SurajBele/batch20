# provider "aws" {
#   region = var.rg
# }
# terraform {
#   backend "s3" {
#     bucket = "terraform12123"
#     region = "ap-south-1"
#     key = "tfstatefile"
#   }
# }

# data "aws_security_groups" "mysg" {
#   filter {
#     name   = "vpc-id"
#     values = [asetaefdrrg12123]
#   }
#   filter {
#     name   = "group-name"
#     values = ["mysg"]
#   }
# }


# resource "aws_instance" "myinstance" {
#   ami = var.ami_id
#   instance_type = var.instance_type_mumbai
#   key_name = var.key_name
#   vpc_security_group_ids = [data.aws_security_groups.mysg.id]
#   availability_zone = var.az
#   tags = {
#     name  = "suraj"
#     Name = "myinstance"
#     Environment = "dev"
#   }
# }


