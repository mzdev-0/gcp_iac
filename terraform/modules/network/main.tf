resource "google_compute_network" "default-network" {
  project                 = var.project_id
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default-subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  project       = var.project_id
  name          = each.value.name
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.default-network.id

  dynamic "secondary_ip_range" {
    for_each = each.value.secondary_ip_range
    content {
      range_name    = secondary_ip_range.key
      ip_cidr_range = secondary_ip_range.value
    }
  }
}

