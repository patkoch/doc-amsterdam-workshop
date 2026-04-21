variable "repository_name" {
  description = "The name of the GitHub repository to create"
  type        = string
}

variable "repository_description" {
  description = "A description for the DevOpsCon Terraform workshop repository"
  type        = string
  #default     = "An example repository created with Terraform" 
}

variable "repository_private" {
  description = "Whether the repository should be private or public"
  type        = bool
  default     = false
}