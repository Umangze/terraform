terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.13.0"
    }
}
   backend "gcs" {
      bucket = "terraform_bucs"
      prefix = "terraform_basic" 
    }
}

provider "google" {
  project = "western-passkey-436609-b4"
  region = "us-central1"
}

resource "google_compute_instance" "my-first-vm" {
  name = "myfirst"
  zone = "us-central1-a"
  machine_type = "e2-medium"
  network_interface {
    network = "projects/western-passkey-436609-b4/global/networks/default"
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
