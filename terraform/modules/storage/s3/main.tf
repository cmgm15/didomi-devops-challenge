resource "aws_s3_bucket" "s3" {
  bucket = "${var.name}-large-files-bucket"
  
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = true
  }

  tags = var.tags
}
