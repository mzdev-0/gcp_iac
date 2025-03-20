output "network_name" {
  description = "The name of the network."
  value       = google_compute_network.default.name
}

output "network_id" {
  description = "The ID of the network."
  value       = google_compute_network.default.id
}

output "subnets" {
  description = "A map of subnet names to subnet IDs."
  value       = { for subnet in google_compute_subnetwork.default : subnet.name => subnet.id }
}