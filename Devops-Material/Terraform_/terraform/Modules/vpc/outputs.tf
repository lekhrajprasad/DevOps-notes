output "myvpcname" {

        value = "${aws_vpc.myvpc.tags.Name}"
}


output "mysecgroupid" {
	value = "${aws_security_group.mysecgroup.id}"
}

output "mysubnet_id" {
	value = "${aws_subnet.mypubsubnet.id}"
}
