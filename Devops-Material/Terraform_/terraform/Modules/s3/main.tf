/* Creating S3 Bucket */
resource "random_id" "myrandomid" {

  byte_length = 2
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "${var.mys3bucket_name}-${random_id.myrandomid.dec}"
  force_destroy = "true"

  tags = {
    Name        = "${var.mys3bucket_name}"
  }
}

