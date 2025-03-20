
variable "project_id" {
  type        = string
  description = "The project ID"
}

variable "repository_id" {
  type        = string
  description = "The ID of the artifact repository."
  default     = "my-repository"
}

variable "location" {
  type        = string
  description = "The location of the artifact repository."
  default     = "us-central1"
}

variable "description" {
  type        = string
  description = "The description of the artifact repository."
  default     = "A repository for storing artifacts."
}

variable "format" {
  type        = string
  description = "The format of packages that will be stored in the repository. Supported formats are: DOCKER, MAVEN, NPM, PYTHON, APT, YUM."
  default     = "DOCKER"
}

