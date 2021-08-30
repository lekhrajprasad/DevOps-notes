output "Instance_Name" {
        value = "${aws_instance.server.tags.Name}"
}

output "Instance_Ip" {
        value = "${aws_instance.server.public_ip}"
}
