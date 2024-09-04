provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("/tmp/credentials.json")
}

terraform {
  required_version = ">= 1.9.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.38.0"
    }
  }
}