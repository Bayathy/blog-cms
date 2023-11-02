# resource "google_sql_database_instance" "instance" {
#   name = "blog-cms"
#   database_version = "POSTGRES_13"
#   region = var.gcp_region
# }

# resource "google_sql_database" "database" {
#   name = "blog-cms-db"
#   instance = google_sql_database_instance.instance.name
# }

# resource "google_sql_user" "user" {
#   name = "blog-cms-user"
#   instance = google_sql_database_instance.instance.name
#   password = var.database_user_password
# }