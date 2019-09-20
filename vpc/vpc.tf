resource "aws_vpc" "default" {
cidr_block = "${var.vpc_cidr}"
enable_dns_hostnames = true
tags = {
Name = "SANPOC1-AWS-VPC"
}
}
output "vpc_id" {
  value = "${aws_vpc.default.id}"
}
