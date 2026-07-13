resource "aws_instance" "ec2" {
  for_each	= var.servers

  instance_type = var.instance_type
  ami		= data.aws_ami.ami.id
  key_name	= var.key_name
  vpc_security_group_ids = [var.security_group_id]

  user_data = each.value.user_data

  tags = {
    Name = each.key
  }
}
