remote_state {
  backend = "gcs"

  config = {
    bucket = "sm-terraform-hug4-demo-state-files"
    prefix = "europe-west1/central/demo/${path_relative_to_include()}"
  }
}

generate "provider" {
  path = "providers.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  version = "3.58.0"
  alias   = "impersonate"
}

data "google_service_account_access_token" "sa" {
  provider               = google.impersonate
  target_service_account = "terraform-ci-readonly@supermetrics-dev-sandbox.iam.gserviceaccount.com"
  lifetime               = "600s"

  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
  ]
}

provider "google" {
  version      = "3.58.0"
  access_token = data.google_service_account_access_token.sa.access_token
}

provider "google-beta" {
  version      = "3.58.0"
  access_token = data.google_service_account_access_token.sa.access_token
}
EOF
}
