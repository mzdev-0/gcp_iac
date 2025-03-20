# modules/gke/variables.tf



variable "cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
  default     = "gke-cluster"
}

variable "cluster_location" {
  type        = string
  description = "Location for the GKE cluster (region or zone)"
  default     = "us-central1"
}



variable "subnetwork_name" {
  type        = string
  description = "Name of the subnetwork for the cluster"
}

variable "release_channel" {
  type        = string
  description = "GKE Release channel for the cluster (e.g., RAPID, REGULAR, STABLE, UNSPECIFIED)"
  default     = "REGULAR"
}

variable "deletion_protection" {
  type        = bool
  description = "Whether cluster deletion protection is enabled"
  default     = true
}

variable "enable_private_nodes" {
  type        = bool
  description = "Enable private nodes for the cluster"
  default     = true
}

variable "master_ipv4_cidr_block" {
  type        = string
  description = "The CIDR block to use for the cluster master's internal IP. Only used if enable_private_nodes is true."
  default     = "172.16.0.0/28" # Example private IP range
}

variable "enable_private_endpoint" {
  type        = bool
  description = "Enable private endpoint for master access. Only used if enable_private_nodes is true."
  default     = true
}

variable "enable_public_endpoint" {
  type        = bool
  description = "Enable public endpoint for master access. Only used if enable_private_nodes is true."
  default     = false
}

variable "master_username" {
  type        = string
  description = "Username for basic authentication to the cluster master (not recommended for production)"
  default     = "admin"
}

variable "master_password" {
  type        = string
  description = "Password for basic authentication to the cluster master (not recommended for production)"
  default     = "password"
  sensitive   = true # Mark as sensitive
}

variable "disable_http_load_balancing" {
  type        = bool
  description = "Disable HTTP load balancing addon"
  default     = false
}

variable "disable_horizontal_pod_autoscaling" {
  type        = bool
  description = "Disable Horizontal Pod Autoscaling addon"
  default     = false
}

variable "disable_kubernetes_dashboard" {
  type        = bool
  description = "Disable Kubernetes Dashboard addon"
  default     = true # Disabled by default for security reasons
}

variable "disable_network_policy" {
  type        = bool
  description = "Disable Network Policy addon"
  default     = false
}

variable "enable_vertical_pod_autoscaling" {
  type        = bool
  description = "Enable Vertical Pod Autoscaling"
  default     = false
}

variable "logging_enabled_components" {
  type        = list(string)
  description = "List of components logging to Cloud Logging (SYSTEM_COMPONENTS, WORKLOADS)"
  default     = ["SYSTEM_COMPONENTS", "WORKLOADS"]
}

variable "monitoring_enabled_components" {
  type        = list(string)
  description = "List of components monitoring to Cloud Monitoring (SYSTEM_COMPONENTS, WORKLOADS)"
  default     = ["SYSTEM_COMPONENTS", "WORKLOADS"]
}
