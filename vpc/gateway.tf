resource "aws_internet_gateway" "default"{
  vpc_id = "${aws_vpc.default.id}"
  tags = {
    Name = "SAN_POC"
}
}