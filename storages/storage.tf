resource "google_storage_bucket" "bucket" {
  name     = "tf-bucket-${var.suffix}-001"
  location = "EU"
}

resource "google_storage_bucket_object" "archive" {
  name   = "tf-archive-${var.suffix}-001"
  bucket = google_storage_bucket.bucket.name
  source = "./tf-function-mathiasgilles-001.zip"
}