resource “aws_security_group” “radsatad_stack” {
name       = “radstad”
#“Security Group for Radstad_Stack”
vpc_id     = “${aws_vpc.Radstad_Stack”.id}”
tags       = {
   Name = “${var.stack_name}”
}
ingress {
   from_port   = 0
   to_port     = 0
   protocol   = “-1”
   cidr_blocks = [“0.0.0.0/0”]    
   self       = “true”
}
egress {
   from_port   = 0
   to_port     = 0
   protocol   = “-1”
   cidr_blocks = [“0.0.0.0/0”] }
}