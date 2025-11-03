resource "google_project_service" "artifactregistry" {
  project = var.project_id
  service = "artifactregistry.googleapis.com"
}

resource "google_project_service" "run" {
  project = var.project_id
  service = "run.googleapis.com"
  depends_on = [google_project_service.artifactregistry]
}

resource "google_project_service" "iam" {
  project = var.project_id
  service = "iam.googleapis.com"
}

# Optional but useful if you use gcloud builds later
resource "google_project_service" "cloudbuild" {
  project = var.project_id
  service = "cloudbuild.googleapis.com"
}
