provider "google" {
  credentials = file("~/sec.json")
  project     = var.project_id
  region      = var.region
}
