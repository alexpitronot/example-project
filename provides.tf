provider "google" {
  project = var.project_id
  region  = var.cluster_region
  credentials = ${{ secrets.GOOGLE_CREDENTIALS }}
}