provider "google" {
  region = "us-central1"
  scopes = ["https://www.googleapis.com/auth/cloud-platform"]
}
terraform {
  required_providers {
    google = {
      version = "> 6.11.2"
    }
    google-beta = {
      version = "6.4.0"
    }
  }
}
