terraform {
  backend "gcs" {
    bucket  = "bucket_projet_master"
    prefix  = "GKE_Tfsate"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "gke-monitoring-cluster"
  location = var.region
  deletion_protection = false
  remove_default_node_pool = true
  initial_node_count       = 1

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  location   = var.region
  name       = "primary-node-pool"
  node_count = 2

  node_config {
    machine_type  = "e2-medium"
    disk_size_gb  = 100     
    disk_type     = "pd-standard"  # ou "pd-balanced" (évite "pd-ssd" pour moins de quota)
  }
}