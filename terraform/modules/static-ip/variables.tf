variable "project_id" {
  type        = string
  description = "The project ID"
}
variable "name" {
  type        = string
  description = "The name of the static IP address."
  default     = "my-static-ip"
}

variable "region" {
  type        = string
  description = "The region in which to create the static IP address."
  default     = "us-central1"
}

variable "description" {
  type        = string
  description = "A description of the static IP address."
  default     = "A static IP address."
}
