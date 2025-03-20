resource "google_compute_address" "default-static-ip" {
  project     = module.network.project_id
  name        = var.name
  region      = var.region
  description = var.description
}