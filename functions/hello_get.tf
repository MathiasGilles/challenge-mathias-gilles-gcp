resource "google_cloudfunctions_function" "function" {
  name        = "tf-function-${var.suffix}-001"
  description = "Function to display hello world"
  runtime     = "nodejs18"

  available_memory_mb   = 128
  source_archive_bucket = var.bucket_name
  source_archive_object = var.archive_name
  trigger_http          = true
  entry_point           = "helloGET"
}
