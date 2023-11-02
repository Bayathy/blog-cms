variable "gcp_project_id" {
  type = string
  description = "The project ID of the GCP project to deploy to"
}

variable "gcp_region" {
  type = string
  description = "The region to deploy to"
}

variable "gcp_zone" {
  type = string
  description = "The zone to deploy to"
}

variable "database_user_password" {
  type = string
  description = "The password for the database user"
}



variable "ADMIN_EMAIL" {
  type = string
  description = "The email address of the Directus admin user"
}

variable "ADMIN_PASSWORD" {
  type = string
  description = "The password of the Directus admin user"
}