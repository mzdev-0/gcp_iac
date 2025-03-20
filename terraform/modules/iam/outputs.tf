output "service_account_email" {
  description = "The email address of the service account."
  value       = google_service_account.default-iam.email
}

output "service_account_name" {
  description = "The fully-qualified name of the service account."
  value       = google_service_account.default-iam.name
}