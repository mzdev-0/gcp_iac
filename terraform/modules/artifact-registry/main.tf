resource "google_artifact_registry_repository" "default" {
  project      = var.project_id
  repository_id = var.repository_id
  location      = var.location
  description   = var.description
  format        = var.format
}