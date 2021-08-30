resource "aws_vpc" "myvpc" {
  cidr_block       = "${var.myvpc_cidr}"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "${var.myvpc_name}"
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    Name = "${var.myigw_name}"
  }
}

resource "aws_route_table" "myroute" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "${var.myroute_cidr}"
    gateway_id = "${aws_internet_gateway.myigw.id}"
  }

  tags = {
    Name = "${var.myroute_name}"
  }
}

resource "aws_subnet" "mypubsubnet" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.mysub_cicdr}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "${var.mypubsubnet_name}"
  }
}

resource "aws_route_table_association" "myroute_association" {
  route_table_id = "${aws_route_table.myroute.id}"
  subnet_id = "${aws_subnet.mypubsubnet.id}"
}

resource "aws_security_group" "mysecgroup" {
  name        = "${var.mysecgroup_name}"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
        tags {
                Name = "${var.mysecgroup_name}"
        }
}

