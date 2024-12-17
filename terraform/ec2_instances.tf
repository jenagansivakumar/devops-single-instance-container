resource "aws_instance" "master_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "master_instance"
  }
}
