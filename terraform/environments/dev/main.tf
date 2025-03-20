resource "google_storage_bucket" "default" {
  name          = "your-dev-bucket-name"
  location      = "US"
  project       = var.project_id
  force_destroy = true
}