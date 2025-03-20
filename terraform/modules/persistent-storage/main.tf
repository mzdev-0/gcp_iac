resource "google_compute_disk" "default" {
  project = var.project_id
  name    = var.name
  zone    = var.zone
  type    = var.type
  size_gb = var.size_gb
}