variable "instance_names" {
    # type = map
    # default = { #map =
    #     db-dev = "t3.small"
    #     backend-dev = "t3.micro"
    #     froentend-dev = "t3.micro"
    # }
  
}
#variable "ami_id" {
   #default = "ami-041e2ea9402c46c32"
  
#}
variable "environment" {
    default = "dev"
  
}

 variable "common_tags" {
    type = map
    default = { # ifit is equals to it is a map,if not it just a block 
        Project = "Expense"
        Terraform = "true"
    }
   
 }

 variable "domain_name" {
    default = "techzena.online"
   
 }
 variable "zone_id" {
    default = "Z10248482NRJFVSBTWF2N"  
 }