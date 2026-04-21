variable "repository_name" {
  description = "The name of the GitHub repository to create"
  type        = string
}

variable "repository_description" {
  description = "A description for the DevOpsCon Terraform workshop repository"
  type        = string
  #default     = "An example repository created with Terraform" 

  validation {
    condition     = length(var.repository_description) > 0
    error_message = "The repository description cannot be empty."
  }
}

variable "github_owner" {
  description = "The GitHub username or organization that will own the repository"
  type        = string
}

variable "github_token" {
  description = "A GitHub personal access token with permissions to create repositories"
  type        = string
  sensitive   = true
}

variable "visibility" {
  description = "The visibility of the repository (public or private)"
  type        = string
  default     = "public"
}