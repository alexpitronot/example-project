variable "cluster_name" {
  default = "terra-cluster"
}

variable "project_name" {
  default = "int-project"
}

variable "cluster_region" {
  default = "us-central1"
}

variable "zones" {
  default = "us-central1"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}


variable "project_id" {
  type = string
  description = "project id"
  default = "projecte-xample-1"
}


variable "gke_service_account" {
  type = string
  description = "Gke Account name"
  default = "projecte-xample-1@projecte-xample-1.iam.gserviceaccount.com"
}

variable "service_account_id" {
  type = string
  description = "service account id"
  default = "702359916422"
}

variable "gke_network" {
  type = string
  description = "network"
  default = "default"
}

variable "gke_subnetwork" {
  type = string
  description = "subnetwork"
  default = "default"
}


