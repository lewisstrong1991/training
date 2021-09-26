resource "google_compute_network" "vpc_network" {
  name                    = "${var.project_name}-network"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_name}-subnet"
  region        = var.region
  network       = google_compute_network.vpc_network.name
  ip_cidr_range = "10.10.0.0/24"
}