provider "google" {
  version = "3.44.0"
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
  version      = "3.44.0"
  access_token = data.google_service_account_access_token.sa.access_token
}

provider "google-beta" {
  version      = "3.44.0"
  access_token = data.google_service_account_access_token.sa.access_token
}