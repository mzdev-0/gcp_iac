# modules/gke/outputs.tf

output "cluster_name" {
  description = "Name of the GKE cluster"
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "Endpoint for the GKE cluster"
  value       = google_container_cluster.primary.endpoint
  sensitive   = true
}

output "cluster_master_version" {
  description = "Version of the master GKE cluster"
  value       = google_container_cluster.primary.master_version
}

output "cluster_id" {
  description = "ID of the GKE cluster"
  value       = google_container_cluster.primary.id
}

output "cluster_location" {
  description = "Location of the GKE cluster"
  value       = google_container_cluster.primary.location
}

output "cluster_project" {
  description = "Project of the GKE cluster"
  value       = google_container_cluster.primary.project
}

output "cluster_client_certificate" {
  description = "Client certificate for cluster authentication"
  value       = google_container_cluster.primary.master_auth[0].client_certificate
  sensitive   = true
}

output "cluster_client_key" {
  description = "Client key for cluster authentication"
  value       = google_container_cluster.primary.master_auth[0].client_key
  sensitive   = true
}

output "cluster_cluster_ca_certificate" {
  description = "Cluster CA certificate for cluster authentication"
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
  sensitive   = true
}
