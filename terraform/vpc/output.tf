output "public_ip" {
  value = aws_instance.pub-instance.public_ip
}
output "vpc_id" {
  value = aws_vpc.my-vpc.id
}
