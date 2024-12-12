terraform {
  required_version = "~> 1.10.0"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.13.0"
    }
  }
  backend "gcs" {
    bucket = "terraform_bucs"
    prefix = "terraform_multi_provider" 
}
}

# Provider block 1

provider "google" {
  project = "western-passkey-436609-b4"
  region = "us-central1"
}

# Provider block 2

provider "google" {
  project = "western-passkey-436609-b4"
  region = "us-central2"
  alias = "us-central2"
}