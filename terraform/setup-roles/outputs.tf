output "access" {
  description = "Access Key ID for IAM User"
  value       = var.api_keys ? aws_iam_access_key.test[0].id : null
}

output "secret" {
  description = "Secret Access Key for IAM User"
  value       = var.api_keys ? aws_iam_access_key.test[0].encrypted_secret : null
}