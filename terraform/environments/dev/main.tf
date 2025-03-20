module "network" {
  source       = "../../modules/network"
  project_id   = var.project_id
  network_name = "dev-network"
  subnets = []
}

module "artifact_registry" {
  source       = "../../modules/artifact-registry"
  project_id   = var.project_id
  location     = "us-central1"
  repository_id = "dev-repository"
}

module "iam" {
  source           = "../../modules/iam"
  project_id       = var.project_id
  service_account_id = "dev-sa"
  roles            = []
}

module "static_ip" {
  source      = "../../modules/static-ip"
  project_id  = var.project_id
  name        = "dev-static-ip"
  region      = "us-central1"
}

module "persistent_storage" {
  source    = "../../modules/persistent-storage"
  project_id = var.project_id
  name      = "dev-disk"
  zone      = "us-central1-a"
}
