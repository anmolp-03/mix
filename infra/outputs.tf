output "course_url" {
  value = google_cloud_run_v2_service.course.uri
}

output "enroll_url" {
  value = google_cloud_run_v2_service.enroll.uri
}
