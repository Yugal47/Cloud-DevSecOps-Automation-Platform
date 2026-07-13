module "security" {
  source = "./modules/security"
}

module "ec2" {
  source	= "./modules/ec2"
  instance_type	= var.instance_type
  key_name	= var.key_name
  security_group_id = module.security.security_group_id
  servers = {
    Master = {
      user_data = file("${path.module}/userdata/Master.sh")
    }
    Slave1 = {
      user_data	= file("${path.module}/userdata/Slave1.sh")
    }
    Slave2 = {
      user_data = file("${path.module}/userdata/Slave2.sh")
    }
    SonarQube = {
      user_data = file("${path.module}/userdata/SonarQube.sh")
    }
    Nexus = {
      user_data = file ("${path.module}/userdata/Nexus.sh")   
    }
    Jenkins = {
      user_data = file("${path.module}/userdata/Jenkins.sh")
    }
  }
}
