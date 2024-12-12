resource "google_compute_network" "vpc2" {
  name = "vpc2"
  auto_create_subnetworks = false
  provider = google.us-central2
}