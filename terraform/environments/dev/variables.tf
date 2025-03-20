variable "project_id" {
  type        = string
  description = "The ID of the project in which to create the network."
}

variable "network_name" {
  type        = string
  description = "The name of the network."
  default     = "default-network"
}

variable "location" {
  type        = string
  description = "The name of the network."
  default     = "us-central-a"
}

variable "repository_id" {
  type        = string
  description = "The name of the Artifact Repository"
  default     = "default-repo"
}

variable "sa_id" {
  type        = string
  description = "The service account name"
  default     = "default-sa"
}

variable "ip_name" {
  type        = string
  description = "The external IP id"
  default     = "default-ip"
}

variable "region" {
  type        = string
  description = "The region"
  default     = "us-central"
}

variable "storage_name" {
  type        = string
  description = "The id of the storage"
  default     = "default-storage"
}

variable "zone" {
  type        = string
  description = "The zone ID"
  default     = "us-central"
}
variable "cluster_name" {
  type        = string
  description = "The name of the gke cluster."
  default     = "default-cluster"
}
variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
  default     = "default-subnet"
}
variable "node_pool_name" {
  type        = string
  description = "The name of the node pool."
  default     = "default-pool"
}
variable "min_nodes" {
  type        = number
  description = "Minimum number of nodes"
  default     = 2
}
variable "max_nodes" {
  type        = number
  description = "Maximum number of nodes"
  default     = 2
}
variable "machine_type" {
  type        = string
  description = "The VM type"
  default     = "e2-medium"
}
variable "initial_node_count" {
  type        = number
  description = "The initial number of nodes"
  default     = 2
}



