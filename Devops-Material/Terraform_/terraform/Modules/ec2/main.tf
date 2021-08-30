resource "aws_instance" "server" {
    ami = "${var.ami_id}"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
#    vpc_security_group_ids = ["${aws_security_group.mysecgroup.id}"]
    vpc_security_group_ids = ["${var.mysecgroup_id}"]
    subnet_id = "${var.mysubnet_id}"
    source_dest_check = false

    tags {
        Name = "${var.server_name}"
    }
}
