resource "google_compute_address" "default" {
  project     = var.project_id
  name        = var.name
  region      = var.region
  description = var.description
}