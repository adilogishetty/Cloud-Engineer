resource “aws_subnet” “default” {
vpc_id     = “${aws_vpc.radstad.id}”
cidr_block = “10.100.101.0/24”
map_public_ip_on_launch = true

}