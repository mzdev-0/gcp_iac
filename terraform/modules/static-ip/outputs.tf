output "address" {
  description = "The static IP address."
  value       = google_compute_address.default.address
}

output "name" {
  description = "The name of the static IP address."
  value       = google_compute_address.default.name
}