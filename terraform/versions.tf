terraform {
  required_version = ">= 1.0" # Or your preferred Terraform version

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Or your preferred Google Provider version
    }
  }
}
