resource "google_compute_firewall" "allow-http" {
  project     = var.project_id
  name        = "allow-http"
  network     = var.network
  description = "Allow http access"

  allow {
    protocol = "tcp"
    ports    = ["80", "3000", "1337"]
  }

  target_tags   = ["http-server", "https-server"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-https" {
  project     = var.project_id
  name        = "allow-https"
  network     = var.network
  description = "Allow http access"

  allow {
    protocol = "tcp"
    ports    = ["80", "3000", "1337"]
  }

  target_tags   = ["http-server", "https-server"]
  source_ranges = ["0.0.0.0/0"]
}