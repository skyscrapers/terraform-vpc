variable "aws_region" {
  description = "The AWS region to work in."
  default = "us-east-1"
}

variable "cidr_block" {
  description = "CIDR block you want to have in your VPC"
  default = "10.0.0.0/16"
}

variable "amount_subnets" {
  description = "Amount of subnets you need"
  default = "3"
}


/*
this currently doesn't allow to change value from module as described here:
https://github.com/hashicorp/terraform/issues/1336
variable "subnets" {
  description = "Availability zones"
  default = {
    "0" = "a"
    "1" = "b"
    "2" = "c"
    "3" = "d"
  }
}*/

/*Adding this workaround*/
variable "subnets-keys" {
  description = "Availability zones keys"
  default = "0,1,2,3"
}
variable "subnets-values" {
  description = "Availability zones values"
  default = "a,b,c,d"
}
/*end workaround*/
variable "subnets_cidr_block" {
  description = "Subnets that you need, this needs to be , delimited"
  default =  "10.0.0.0/24,10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
}

variable "environment" {
  description = "How do you want to call your environment, this is helpful if you have more than 1 VPC."
  default = "production"
}

variable "project" {
  description = "The current project"
  default = ""
}
