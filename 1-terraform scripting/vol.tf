resource “aws_instance” “radstad_app_server” {
ami             = “${lookup(var.aws_w2012r2_std_amis, var.aws_region)}”
instance_type   = “${var.aws_app_instance_type}”
key_name         = “${lookup(var.key_name, var.aws_region)}”
subnet_id       = “${aws_subnet.default.id}”
private_ip       = “10.100.101.52”
depends_on       = [“aws_instance.radstad_ad_server”,”aws_instance.radstad_db_server”] ebs_block_device {
   device_name           = “/dev/xvdf”
   volume_size           = 100
   volume_type           = “standard”
   delete_on_termination = true
}
vpc_security_group_ids = [
   “${aws_security_group.radstad_stack.id}”
] 