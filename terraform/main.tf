module "security" {
  source = "./modules/security"
}

module "ec2" {
  source	= "./modules/ec2"
  instance_type	= var.instance_type
  key_name	= var.key_name
  name		= "Master"
  security_group_id = module.security.security_group_id
}
