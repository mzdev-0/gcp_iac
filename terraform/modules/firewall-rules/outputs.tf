output "firewall_rule_names" {
  description = "The names of the firewall rules."
  value       = keys(google_compute_firewall.default-firewall-rules)
}