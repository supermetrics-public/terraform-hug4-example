terraform {
  backend "local" {
    path = "../../../.tfstate-cloudflare/demo/hug-me/demo-hug-me-cf-zone/terraform.tfstate"
  }
}

module "demo_hug_me_cf_zone" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-zone?ref=feature/add-cf-base-tf-modules"

  zone = "demo-hug.me"
  plan = "free"
  type = "full"
}
