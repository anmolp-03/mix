variable "project_id"    { type = string }
variable "region"        { type = string  default = "asia-south1" }
variable "repo_location" { type = string  default = "asia-south1" }

# If you created tf-key.json, set use_sa_key=true and sa_key_file="tf-key.json"
variable "use_sa_key" { type = bool   default = false }
variable "sa_key_file" { type = string default = "" }

# Docker image tags that will be pushed to Artifact Registry before 'terraform apply'
variable "course_image" { type = string }
variable "enroll_image" { type = string }
