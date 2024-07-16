resource "aws_instance" "expense" {
    for_each = var.instance_names #each.key and each.value
   ami = data.aws_ami.ami_info.id
   vpc_security_group_ids = ["sg-081ca51df288ea1f1"]
   # we can define created resource
  instance_type = each.value
  #left side are arguments and right side are values.
  tags = merge(
    var.common_tags,
    {
        Name = "${each.key}" #db.dev
        Module ="${each.key}"#db.dev
        Environment = var.environment
    }
  )
}