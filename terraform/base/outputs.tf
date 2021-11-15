output "s3_remote_state" {
  value       = module.s3_remote_state.remote_state_bucket
  description = "S3 bucket name for the remote state"
}