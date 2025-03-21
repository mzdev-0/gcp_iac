# node-pool/variables.tf







variable "node_pool_name" {
  type        = string
  description = "The name of the node pool."
}

variable "initial_node_count" {
  type        = number
  description = "The initial number of nodes in the node pool."
}

variable "machine_type" {
  type        = string
  description = "The machine type for nodes in the node pool."
}

variable "min_nodes" {
  type        = number
  description = "Minimum number of nodes for autoscaling."
}

variable "max_nodes" {
  type        = number
  description = "Maximum number of nodes for autoscaling."
}
