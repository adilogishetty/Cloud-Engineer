resource “aws_main_route_table_association” “main” {
vpc_id = “${aws_vpc.radstad.id}”
route_table_id = “${aws_route_table.main.id}”
}