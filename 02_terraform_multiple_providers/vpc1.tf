resource "google_compute_network" "vpc1" {
  name = "vpc1"
  auto_create_subnetworks = false
}