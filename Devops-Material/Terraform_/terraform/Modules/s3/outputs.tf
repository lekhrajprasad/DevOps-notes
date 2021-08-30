/* Creating S3 Bucket */
output "mys3bucket" {
        value = "${aws_s3_bucket.mys3bucket.tags.Name}"
}
