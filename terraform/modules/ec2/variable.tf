variable "instance_type" { 
}
variable "key_name" {
}
variable "security_group_id" {}
variable "servers" {
  type = map (object({
    user_data	  = string
  }))
}
