resource "google_artifact_registry_repository" "repo" {
  project       = var.project_id
  location      = var.repo_location
  repository_id = "microservices-repo"
  description   = "Images for course/enroll services"
  format        = "DOCKER"
  depends_on    = [google_project_service.artifactregistry]
}

output "artifact_registry_repo" {
  value = google_artifact_registry_repository.repo.repository_id
}
