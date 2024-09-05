resource "google_bigquery_dataset" "tracknme_dataset" {
  dataset_id = "tracknme_dataset"
  location = "us-central1"
}

resource "google_bigquery_table" "elasticsearch_table" {
  dataset_id = google_bigquery_dataset.tracknme_dataset.dataset_id
  table_id = "elasticsearch_table"
  schema {
    fields {
      name = "name"
      type = "STRING"
    }
    fields {
      name = "age"
      type = "INTEGER"
    }
  }
}


resource "google_bigquery_table" "chatwoot_table" {
  dataset_id = google_bigquery_dataset.tracknme_dataset.dataset_id
  table_id = "chatwoot_table"
  schema {
    fields {
      name = "name"
      type = "STRING"
    }
    fields {
      name = "age"
      type = "INTEGER"
    }
  }
}

resource "google_bigquery_table" "dialogflow_table" {
  dataset_id = google_bigquery_dataset.tracknme_dataset.dataset_id
  table_id = "dialogflow_table"
  schema {
    fields {
      name = "name"
      type = "STRING"
    }
    fields {
      name = "age"
      type = "INTEGER"
    }
  }
}

