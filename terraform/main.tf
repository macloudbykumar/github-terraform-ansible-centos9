provider "google" {
  credentials = file("~/sec.json")
  project     = var.project_id
  region      = var.region
}

terraform {
  required_version = ">= 0.13"

  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }

  backend "gcs" {
    bucket      = "tf-state-prod-bykumar"
    prefix      = "dev"
    credentials = "~/sec.json"
   }
}
