output "s3_bucket" {
  value       = aws_s3_bucket.s3.id
  description = "S3 bucket name for the large files that the application requires"
}
