module "network" {
  source       = "../../modules/network"
  project_id   = var.project_id
  network_name = var.network_name
  subnets      = []
}

module "artifact_registry" {
  source        = "../../modules/artifact-registry"
  location      = var.location
  repository_id = var.repository_id
}

module "iam" {
  source             = "../../modules/iam"
  service_account_id = var.sa_id
  roles              = []
}

module "static_ip" {
  source = "../../modules/static-ip"
  name   = var.ip_name
  region = var.region
}

module "persistent_storage" {
  source = "../../modules/persistent-storage"
  name   = var.storage_name
  zone   = var.zone
}

module "gke" {
  source           = "../../modules/gke"
  cluster_name     = var.cluster_name
  cluster_location = var.location
  subnetwork_name  = var.subnet_name
}

module "node-pool" {
  source             = "../../modules/node-pool"
  node_pool_name     = var.node_pool_name
  min_nodes          = var.min_nodes
  max_nodes          = var.max_nodes
  machine_type       = var.machine_type
  initial_node_count = var.initial_node_count

}
