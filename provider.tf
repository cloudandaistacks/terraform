terraform {
  required_version = "~> 1.0"

  backend "remote" {
    organization = "cloudandaistacks"

    workspaces {
      name = "terraform-cloud"
    }
  }
}