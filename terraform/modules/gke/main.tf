# modules/gke/main.tf

resource "gke-cluster" "default-cluster" {
  name                   = var.cluster_name
  location               = var.cluster_location
  project                = module.network.project_id
  network                = module.network.network_name
  subnetwork             = var.subnetwork_name
  deletion_protection    = var.deletion_protection
  enable_private_nodes   = var.enable_private_nodes
  master_ipv4_cidr_block = var.master_ipv4_cidr_block

  private_cluster_config {
    enable_private_endpoint = var.enable_private_endpoint
    enable_public_endpoint  = var.enable_public_endpoint
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }

  ip_allocation_policy {
    use_ip_aliases = true
  }

  master_auth {
    username = var.master_username
    password = var.master_password
  }

  release_channel {
    channel = var.release_channel
  }

  workload_identity_config {
    identity_namespace = "${module.network.project_id}.svc.id.goog"
  }

  addons_config {
    http_load_balancing {
      disabled = var.disable_http_load_balancing
    }
    horizontal_pod_autoscaling {
      disabled = var.disable_horizontal_pod_autoscaling
    }
    kubernetes_dashboard {
      disabled = var.disable_kubernetes_dashboard
    }
    network_policy_config {
      disabled = var.disable_network_policy
    }
  }

  vertical_pod_autoscaling {
    enabled = var.enable_vertical_pod_autoscaling
  }

  logging_config {
    enable_components = var.logging_enabled_components
  }

  monitoring_config {
    enable_components = var.monitoring_enabled_components
  }
}

