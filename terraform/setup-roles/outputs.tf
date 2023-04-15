output "access" {
  description = "Access Key ID for IAM User"
  value       = aws_iam_access_key.testuser.id
}

output "secret" {
  description = "Secret Access Key for IAM User"
  value       = aws_iam_access_key.testuser.encrypted_secret
}