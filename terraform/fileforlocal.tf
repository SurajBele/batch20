

resource "aws_instance" "myinstance" {
  ami = var.ami_id
  instance_type = local.instance_type
  key_name = local.key_name
  vpc_security_group_ids = [data.aws_security_groups.mysg.id]
  availability_zone = var.az
  tags = {
    name  = "suraj"
    Name = "myinstance"
    Environment = "dev"
  }
}
