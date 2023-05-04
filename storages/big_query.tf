resource "google_bigquery_dataset" "bigquery_dataset" {
  dataset_id                  = "tf_dataset_${var.suffix}_id_001"
  friendly_name               = "tf-dataset-${var.suffix}-001"
  location                    = "EU"
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "bigquery_table" {
  dataset_id = google_bigquery_dataset.bigquery_dataset.dataset_id
  table_id   = "tf-table-${var.suffix}-id-001"
  schema     = jsonencode([
    {
      name : "id",
      type : "STRING",
      mode : "NULLABLE",
      description : "id"
    },
    {
      name : "name",
      type : "STRING",
      mode : "NULLABLE",
      description : "name"
    }
  ])
}