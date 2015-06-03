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

variable "product" {
  description = "The product the VPC relates to. This is a logical group of all resources"
  default = "testing"
}

variable "project" {
  description = "The project this VPC relates to. This is a sub-grouping in a project."
  default = "main"
}

variable "subnets" {
  description = "Availability zones, this needs to be , delimited"
  default = "a,b,c,d"
}

variable "subnets_cidr_block" {
  description = "Subnets that you need, this needs to be , delimited"
  default =  "10.0.0.0/24,10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
}

variable "environment" {
  description = "How do you want to call your environment, this is helpful if you have more than 1 VPC."
  default = "production"
}
