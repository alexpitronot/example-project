output "endpoint" {
  value = google_container_cluster.cluster.endpoint
}

output "master_version" {
  value = google_container_cluster.cluster.master_version
}
