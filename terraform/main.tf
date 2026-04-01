provider "aws" {
  region = var.rg
}
terraform {
  backend "s3" {
    bucket = "terraform12123"
    region = "ap-south-1"
    key = "tfstatefile-module"
  }
}
module "ec2-instance" {
  source = "/modules/instance"
  image_id = var.ami_id
  key_pair = var.key_name
  instance_type = var.instance_type_mumbai
  project = var.project
  sg_ids = var.mysg
  env = var.env
  subnet_id = module.my-vpc.pub_subnet.id
}

module "my-vpc" {
  source = "/modules/vpc"
  project = var.project
  vpc_cidr = var.vpc-cidr
  pvt_subnet_cidr = var.pvt_subnet_cidr
  pub_subnet_cidr = var.pub_subnet_cidr
  env = var.env
}
module "my-vpc2" {
  source = "/modules/vpc"
  project = var.project
  vpc_cidr = var.vpc-cidr2
  pvt_subnet_cidr = var.pvt_subnet_cidr2
  pub_subnet_cidr = var.pub_subnet_cidr2
  env = var.env
}
