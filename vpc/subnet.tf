resource "aws_subnet" "public-subnet" {
vpc_id = "${aws_vpc.default.id}"

cidr_block = "${var.public_subnet_cidr}"
availability_zone = "us-west-2a"

tags = {
Name = "Publicsubnet"
}
}

output "subnet_id_public" {
  value = "${aws_subnet.public-subnet.id}"
}

resource "aws_subnet" "private-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.private_subnet_cidr}"
  availability_zone = "us-west-2b"
tags = {
        Name = "Publicsubnet"
}
  }
output "subnet_id_private" {
  value = "${aws_subnet.private-subnet.id}"
}
