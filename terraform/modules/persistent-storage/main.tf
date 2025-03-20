resource "google_compute_disk" "default-persistent-disk" {
  project = module.network.project_id
  name    = var.name
  zone    = var.zone
  type    = var.type
  size    = var.size_gb
}

