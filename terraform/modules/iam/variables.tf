variable "project_id" {
  type        = string
  description = "The ID of the project in which to manage IAM."
}

variable "service_account_id" {
  type        = string
  description = "The ID of the service account to create."
  default     = "my-service-account"
}

variable "display_name" {
  type        = string
  description = "The display name of the service account."
  default     = "My Service Account"
}

variable "roles" {
  type        = list(string)
  description = "A list of IAM roles to assign to the service account."
  default     = []
}