# modules/gke/versions.tf

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # You can adjust the version as needed
    }
  }
  required_version = ">= 1.0" # Minimum Terraform version
}
