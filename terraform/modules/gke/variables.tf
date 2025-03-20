variable "project_id" {
  type        = string
  description = "The GCP project ID to deploy the GKE cluster in."
}

variable "region" {
  type        = string
  description = "The GCP region to deploy the GKE cluster in."
  default     = "us-central1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster."
  default     = "default-gke-cluster"
}

variable "node_pool_name" {
  type        = string
  description = "The name of the default node pool."
  default     = "default-pool"
}

variable "initial_node_count" {
  type        = number
  description = "The initial number of nodes in the default node pool."
  default     = 1
}

variable "machine_type" {
  type        = string
  description = "The machine type for nodes in the default node pool."
  default     = "e2-medium"
}

variable "min_nodes" {
  type        = number
  description = "Minimum number of nodes for autoscaling in the default node pool."
  default     = 1
}

variable "max_nodes" {
  type        = number
  description = "Maximum number of nodes for autoscaling in the default node pool."
  default     = 3
}

variable "location" {
  type        = string
  description = "The location type for the cluster (region or zone)."
  default     = "REGION" # Can be REGION or ZONE. For regional clusters, use REGION.
}

variable "network" {
  type        = string
  description = "The name of the VPC network to use for the cluster. Defaults to 'default'."
  default     = "default-network"
}

variable "subnetwork" {
  type        = string
  description = "The name of the VPC subnet to use for the cluster. Defaults to 'default'."
  default     = "default-subnet"
}

variable "deletion_protection" {
  type        = bool
  description = "Enable deletion protection for the GKE cluster."
  default     = true # Recommended for production
}
