variable “aws_instance_type” {
default = “t2.large”
}variable “aws_subnet_id” {
default = {
   “us-east-1” = “subnet-xxxxxxxx”
   “us-west-2” = “subnet-xxxxxxxx”
}
}variable “aws_security_group” {
default = {
   “us-east-1” = “sg-xxxxxxxx”
   “us-west-2” = “sg-xxxxxxxx”
}
}variable “radstad_stack_vpc” {
default = “vpc-xxxxxxx”
}