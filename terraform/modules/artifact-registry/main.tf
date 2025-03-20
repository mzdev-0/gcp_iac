resource "google_artifact_registry_repository" "default-registry" {
  project      = module.network.project_id
  repository_id = var.repository_id
  location      = var.location
  description   = var.description
  format        = var.format
}