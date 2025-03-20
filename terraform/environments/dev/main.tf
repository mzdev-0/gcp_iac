module "network" {
  source       = "../../modules/network"
  project_id   = module.network.project_id
  network_name = "dev-network"
  subnets      = []
}

module "artifact_registry" {
  source        = "../../modules/artifact-registry"
  location      = "us-central1"
  repository_id = "dev-repository"
}

module "iam" {
  source             = "../../modules/iam"
  service_account_id = "dev-sa"
  roles              = []
}

module "static_ip" {
  source = "../../modules/static-ip"
  name   = "dev-static-ip"
  region = "us-central1"
}

module "persistent_storage" {
  source = "../../modules/persistent-storage"
  name   = "dev-disk"
  zone   = "us-central1-a"
}

module "gke" {
  source           = "../../modules/gke"
  cluster_name     = "dev-cluster"
  cluster_location = "us-central1"
  subnetwork_name  = "dev-subnet"
}

module "node-pool" {
  source             = "../../modules/node-pool"
  node_pool_name     = "dev-node-pool"
  min_nodes          = module.node-pool.min_nodes
  max_nodes          = module.node-pool.max_nodes
  machine_type       = module.node-pool.machine_type
  initial_node_count = module.node-pool.initial_node_count

}
