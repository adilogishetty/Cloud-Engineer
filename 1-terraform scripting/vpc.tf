resource “aws_vpc” “sharepoint” {
cidr_block = “10.100.101.0/24”
enable_dns_hostnames = “true”
}