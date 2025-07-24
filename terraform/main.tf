provider "google" {
  credentials = file("~/sec.json")
  project     = var.project_id
  region      = var.region
}


terraform {
  backend "gcs" {
    bucket  = "tf-state-prod-bykumar"
    prefix  = "terraform/state"
  }
}
