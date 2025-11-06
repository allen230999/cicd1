variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_03_37a7507f811e-26808-16252"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc2" {
  name                    = "example-vpc2"
  auto_create_subnetworks = true 
}
