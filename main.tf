# Module usage for GKE that creates a kubernetes cluster
module "gke" {
  # The module source link
  source                     = "terraform-google-modules/kubernetes-engine/google"
  # The Cluster project ID variable taken from the variables module
  project_id                 = var.project_id
  # The Cluster name variable taken from the variables module
  name                       = var.cluster_name
  # The Cluster region variable taken from the variables module
  region                     = var.cluster_region
  #
  regional                   = false
  # The Cluster zone variable taken from the variables module
  zones                      = [var.zones]
  # The Network of the cluster variable taken from the variables module
  network                    = var.gke_network
  # The SubNetwork of the cluster variable taken from the variables module
  subnetwork                 = var.gke_subnetwork
  #
  ip_range_pods              = ""
  #
  ip_range_services          = ""
  # Load balancing set to false, dont need it for the current project
  http_load_balancing        = false
  # HPA set to false, dont need it for the current project
  horizontal_pod_autoscaling = false
  #
  network_policy             = false
  # Node configuration to run the cluster on
  node_pools = [
    {
      name                      = "default-node-pool"
      machine_type              = "e2-medium"
      min_count                 = 1
      max_count                 = 3
      local_ssd_count           = 0
      disk_size_gb              = 100
      disk_type                 = "pd-standard"
      image_type                = "COS"
      auto_repair               = true
      auto_upgrade              = true
      service_account           = var.gke_service_account
      preemptible               = true
      initial_node_count        = 1
    },
  ]

  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}