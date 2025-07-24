variable "project_id" {
   default = ""
}

variable "region" {
  type    = string
  default = "us-central1"
}

output "bucket_url" {
  value = "gs://${google_storage_bucket.example.name}"
}





