resource "google_storage_bucket" "default" {
  name          = "your-prod-bucket-name"
  location      = "US"
  project       = var.project_id
  force_destroy = true
}