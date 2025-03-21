output "disk_name" {
  description = "The name of the persistent disk."
  value       = google_compute_disk.default-persistent-disk.name
}

output "disk_size_gb" {
  description = "The size of the persistent disk in GB."
  value       = google_compute_disk.default-persistent-disk.size_gb
}