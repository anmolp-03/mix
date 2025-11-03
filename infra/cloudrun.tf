resource "google_cloud_run_v2_service" "course" {
  name     = "course-service"
  location = var.region
  ingress  = "INGRESS_TRAFFIC_ALL"
  template {
    containers {
      image = var.course_image
      ports { container_port = 7301 }
      env {
        name  = "PORT"
        value = "7301"
      }
    }
  }
  depends_on = [google_project_service.run]
}

resource "google_cloud_run_v2_service_iam_binding" "course_invoker" {
  name     = google_cloud_run_v2_service.course.name
  location = var.region
  role     = "roles/run.invoker"
  members  = ["allUsers"]
}

resource "google_cloud_run_v2_service" "enroll" {
  name     = "enroll-service"
  location = var.region
  ingress  = "INGRESS_TRAFFIC_ALL"
  template {
    containers {
      image = var.enroll_image
      ports { container_port = 7302 }
      env {
        name  = "PORT"
        value = "7302"
      }
    }
  }
  depends_on = [google_project_service.run]
}

resource "google_cloud_run_v2_service_iam_binding" "enroll_invoker" {
  name     = google_cloud_run_v2_service.enroll.name
  location = var.region
  role     = "roles/run.invoker"
  members  = ["allUsers"]
}
