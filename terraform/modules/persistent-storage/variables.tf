

variable "name" {
  type        = string
  description = "The name of the persistent disk."
  default     = "my-persistent-disk"
}

variable "zone" {
  type        = string
  description = "The zone in which to create the persistent disk."
  default     = "us-central1-a"
}

variable "type" {
  type        = string
  description = "The type of persistent disk to create."
  default     = "pd-standard"
}

variable "size_gb" {
  type        = number
  description = "The size of the persistent disk in GB."
  default     = 10
}