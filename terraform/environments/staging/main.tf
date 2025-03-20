resource "google_storage_bucket" "default" {
  name          = "your-staging-bucket-name"
  location      = "US"
  project       = var.project_id
  force_destroy = true
}