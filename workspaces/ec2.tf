resource "aws_instance" "db" {
  ami  = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-081ca51df288ea1f1"]
  instance_type = lookup(var.instance_names, terraform.workspace)
  
  
}