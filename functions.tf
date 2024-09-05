resource "google_cloudfunctions_function" "elasticsearch-to-chatwoot-function" {
  name = "elasticsearch-to-chatwoot-function"
  runtime = "nodejs18"
  entry_point = "helloWorld"
  source_archive_bucket = "functions-bucket"
  source_archive_object = "elasticsearch-to-chatwoot.zip"
}

resource "google_cloudfunctions_function" "chatwoot-to-elasticsearch-function" {
  name = "chatwoot-to-elasticsearch-function"
  runtime = "nodejs18"
  entry_point = "helloWorld"
  source_archive_bucket = "functions-bucket"
  source_archive_object = "chatwoot-to-elasticsearch.zip"
}

resource "google_cloudfunctions_function" "elasticsearch-to-bigquery-function" {
  name = "elasticsearch-to-bigquery-function"
  runtime = "nodejs18"
  entry_point = "helloWorld"
  source_archive_bucket = "functions-bucket"
  source_archive_object = "elasticsearch-to-bigquery.zip"
}

resource "google_cloudfunctions_function" "chatwoot-to-bigquery-function" {
  name = "chatwoot-to-bigquery-function"
  runtime = "nodejs18"
  entry_point = "helloWorld"
  source_archive_bucket = "functions-bucket"
  source_archive_object = "chatwoot-to-bigquery.zip"
}

resource "google_cloudfunctions_function" "dialogflow-to-bigquery-function" {
  name = "dialogflow-to-bigquery-function"
  runtime = "nodejs18"
  entry_point = "helloWorld"
  source_archive_bucket = "functions-bucket"
  source_archive_object = "dialogflow-to-bigquery.zip"
}