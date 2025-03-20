resource "google_compute_firewall" "rules" {
  for_each = { for rule in var.rules : rule.name => rule }

  project     = var.project_id
  name        = each.value.name
  description = each.value.description
  network     = var.network_name
  direction   = each.value.direction
  priority    = each.value.priority

  dynamic "allow" {
    for_each = each.value.allow
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  dynamic "deny" {
    for_each = each.value.deny
    content {
      protocol = deny.value.protocol
      ports    = deny.value.ports
    }
  }

  source_ranges           = each.value.ranges
  source_service_accounts = each.value.source_service_accounts
  target_service_accounts = each.value.target_service_accounts
  target_tags             = each.value.targets

  log_config {
    metadata = each.value.log_config.metadata
  }
}