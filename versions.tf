terraform {
  cloud {
    organization = "npcr-home"
    workspaces {
      name = "iac"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.0.0"
}

