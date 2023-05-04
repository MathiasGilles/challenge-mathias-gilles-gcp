terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version     = "3.5.0"
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file("./credentials/${var.credentials_file_name}")
}

module "storage" {
  source = "./storages"
  suffix = var.suffix
}

module "function" {
  source     = "./functions"
  depends_on = [
    module.storage
  ]
  suffix = var.suffix
  bucket_name = module.storage.bucket_name
  archive_name = module.storage.archive_name
}