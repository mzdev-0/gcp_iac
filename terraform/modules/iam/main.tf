resource "google_service_account" "default-iam" {
  account_id   = var.service_account_id
  display_name = var.display_name
  project      = var.project_id
}

resource "google_project_iam_member" "roles" {
  for_each = toset(var.roles)

  project = module.network.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.default-iam.email}"
}

