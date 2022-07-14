resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "public"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_ebs_volume" "web_host_storage" {
  # unencrypted volume
  availability_zone = "${var.region}a"
  #encrypted         = false 
  size = 1
  
}
