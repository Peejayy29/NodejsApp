resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
}
