output "repository_id" {
  description = "The ID of the artifact repository."
  value       = google_artifact_registry_repository.default-registry.repository_id
}

output "location" {
  description = "The location of the artifact repository."
  value       = google_artifact_registry_repository.default-registry.location
}