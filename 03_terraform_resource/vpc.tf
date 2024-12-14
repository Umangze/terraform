# google vpc block

resource "google_compute_network" "myvpc" {
  name = "myvpc"
  auto_create_subnetworks = false
}

# subnetworks in google vpc

resource "google_compute_subnetwork" "us1" {
  name = "us-central1-subnet"
  ip_cidr_range = "10.1.0.0/24"
  network = google_compute_network.myvpc.name
  region = "us-central1"
}


# second subnet

resource "google_compute_subnetwork" "us2" {
  name = "us-central2-subnet"
  ip_cidr_range = "10.2.0.0/24"
  network = google_compute_network.myvpc.name
  region = "us-east1"
  #provider = google.us-region
}