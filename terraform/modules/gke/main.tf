resource "gke_cluster" "default-cluster" {
  project_id = var.project_id
  name       = var.cluster_name
  region     = var.region
  zones      = var.zones

  deletion_protection = var.deletion_protection
  enable_autopilot    = false # Set to true for Autopilot cluster


  network    = var.network
  subnetwork = var.subnetwork

  initial_node_count = var.initial_node_count # For initial cluster creation

  module "default_node_pool" {
    source = "./node_pool"

    project_id         = var.project_id
    location           = var.region
    cluster_name       = google_container_cluster.default.name # Pass the cluster name from the cluster resource
    node_pool_name     = var.node_pool_name
    initial_node_count = var.initial_node_count
    machine_type       = var.machine_type
    min_nodes          = var.min_nodes
    max_nodes          = var.max_nodes
  }

  autoscaling {
    min_node_count = var.min_nodes
    max_node_count = var.max_nodes
  }
}

# Optional: Add more features to the cluster here, e.g.,
# private_cluster_config { ... }
# workload_identity_config { ... }
# addons_config { ... }

