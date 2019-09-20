resource "aws_route_table" "public-subnet-route" {
	vpc_id = "${aws_vpc.default.id}"
	route {
	cidr_block = "0.0.0.0/0"
	gateway_id = "${aws_internet_gateway.default.id}"
	}
}
resource "aws_route_table_association" "public-subnet" {
	subnet_id = "${aws_subnet.public-subnet.id}"
	route_table_id = "${aws_route_table.public-subnet-route.id}"
}
resource "aws_route_table_association" "private-subnet" {
	subnet_id = "${aws_subnet.private-subnet.id}"
	route_table_id = "${aws_route_table.public-subnet-route.id}"
}
