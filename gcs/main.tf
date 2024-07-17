resource "google_storage_bucket" "gcs" {
  name = "my_terraform_bucket"
  location = "var.region"
  force_destroy = "true"
  uniform_bucket_level_access = "true"
  public_access_prevention = "enforced"
}

resource "google_storage_bucket_object" "object" {
  name = "my_terraform_object"
  bucket = "google_storage_bucket.gcs.name"
  source = "/images/photo.jpg"
}