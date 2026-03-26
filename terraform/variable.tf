variable "ami_id" {
  default = "ami-0f559c3642608c138"
  description = "ap-south-1_ami"
}
variable "instance_type_mumbai" {
  default = "t3.micro"
}
variable "key_name" {
  default = "id_rsa"
}
variable "mysg" {
  default = "sg-0882b4fee72084654"
}
variable "rg" {
  default = "ap-south-1"
}
variable "az" {
  default = "ap-south-1a"
}