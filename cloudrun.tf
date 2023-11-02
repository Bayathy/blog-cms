resource "google_cloud_run_v2_service" "cloudrun" {
  name = "blog-cms"
  location = var.gcp_region
  template {
    scaling {
      max_instance_count = 1
    }

    volumes {
      name = "cloudsql"
      cloud_sql_instance {
        instances = [google_sql_database_instance.instance.connection_name]
      }
    }

    containers {
      image = "directus/directus:latest"
      ports {
        container_port = 8055
      }

      env {
        name = "KEY"
        value = var.directus_key
      }
      env {
        name = "SECRET"
        value = var.directus_secret
      }
      env {
        name = "ADMIN_EMAIL"
        value = var.directus_admin_email
      }
      env {
        name = "ADMIN_PASSWORD"
        value = var.directus_admin_password
      }
    }
  }
}