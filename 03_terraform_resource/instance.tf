resource "google_compute_instance" "my-test-vm" {
  name = "my-test-vm"
  machine_type = "e2-medium"
  zone = "us-central1-a"
   tags        = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.us1.id
  }
}