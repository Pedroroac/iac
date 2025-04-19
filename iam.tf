resource "google_service_account" "truenas_backup" {
  account_id   = "truenas-backup"
  display_name = "TrueNAS Scale Backup Service Account"
  description  = "Service account used by TrueNAS Scale to upload backups to GCP"
}

resource "google_service_account_iam_member" "truenas_backup_storage_admin" {
  service_account_id = google_service_account.truenas_backup.name
  role               = "roles/storage.objectAdmin"
  member             = "serviceAccount:${google_service_account.truenas_backup.email}"
}

resource "google_service_account_key" "truenas_backup_key" {
  service_account_id = google_service_account.truenas_backup.name
} 