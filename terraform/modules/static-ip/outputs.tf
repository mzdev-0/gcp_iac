output "address" {
  description = "The static IP address."
  value       = google_compute_address.default-static-ip.address
}

output "name" {
  description = "The name of the static IP address."
  value       = google_compute_address.default-static-ip.name
}