resource "aws_instance" "server" {
  instance_type = var.instance_type
  ami		= data.aws_ami.ami.id
  key_name	= var.key_name
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = var.name
  }
}
