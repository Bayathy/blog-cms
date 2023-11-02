terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}


provider "google" {
  credentials = file("blog-cms.json")
  project     = "blog-cms-403414"
  region      = "us-central1"
  zone        = "us-central1-c"
}