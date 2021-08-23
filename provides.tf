resource "google_container_cluster" "default" {
  name        = var.cluster_name
  project     = var.project_name
  description = "GKE Cluster"
  location    = var.cluster_region
  initial_node_count = var.initial_node_count

}

provider "google" {
  project = var.project_id
  region  = var.cluster_region
}