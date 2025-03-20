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

module "gke" {
  source         = "../../modules/gke"
  project_id     = var.project_id
  cluster_name   = "dev-cluster"
  cluster_location = "us-central1"
  network_name   = module.network.network_name
  subnetwork_name = "dev-subnet"
}

module "node_pool" {
  source         = "../../modules/node-pool"
  project_id     = var.project_id
  cluster_name   = module.gke.cluster_name
  cluster_location = module.gke.cluster_location
  node_pool_name = "dev-node-pool"
}
