resource “aws_route_table” “main” {
vpc_id = “${aws_vpc.radstad.id}”
route {
   cidr_block = “0.0.0.0/0”
   gateway_id = “${aws_internet_gateway.main.id}”
}
}