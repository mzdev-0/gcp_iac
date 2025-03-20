variable "project_id" {
  type        = string
  description = "The ID of the project in which to create the firewall rules."
}

variable "network_name" {
  type        = string
  description = "The name of the network to apply the firewall rules to."
}

variable "rules" {
  type        = list(object({
    name                    = string
    description             = string
    direction               = string
    priority                = number
    ranges                  = list(string)
    sources                 = list(string)
    source_service_accounts = list(string)
    targets                 = list(string)
    target_service_accounts = list(string)
    allow = list(object({
      protocol = string
      ports    = list(string)
    }))
    deny = list(object({
      protocol = string
      ports    = list(string)
    }))
    log_config = object({
      metadata = string
    })
  }))
  description = "A list of firewall rule definitions."
  default     = []
}