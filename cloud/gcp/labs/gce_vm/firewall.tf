resource "google_compute_firewall" "http_allow" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]  # Allow from all sources

  target_tags = ["http-server"]
}