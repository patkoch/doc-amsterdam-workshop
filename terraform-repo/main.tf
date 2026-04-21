resource "github_repository" "repo" {
  name        = "example-repository"
  description = "An example repository created with Terraform"
  private     = true
}