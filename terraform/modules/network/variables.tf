variable "project_id" {
  type        = string
  description = "The ID of the project in which to create the network."
}

variable "network_name" {
  type        = string
  description = "The name of the network."
  default     = "my-network"
}

variable "subnets" {
  type = list(object({
    name               = string
    ip_cidr_range      = string
    region             = string
    secondary_ip_range = map(string)
  }))
  description = "A list of subnet definitions."
  default     = []
}