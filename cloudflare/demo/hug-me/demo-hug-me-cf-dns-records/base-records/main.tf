/**
terraform {
  backend "s3" {
  }
}
*/

terraform {
  backend "local" {
    path = "../../../../.tfstate-cloudflare/demo/hug-me/demo-hug-me-cf-dns-records/base-records/terraform.tfstate"
  }
}

locals {
  bucket_prefix = var.profile_bucket_prefix_map[var.profile]
  profile       = var.aws_profile_map[var.profile]
}

module "demo_hug_me_a1" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-record?ref=master"

  zone_id = data.terraform_remote_state.demo_hug_me_cf_zone.outputs.cf_zone_id
  name    = "demo-hug.me"
  type    = "A"
  value   = "127.0.0.1"
}

module "demo_hug_me_a2" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-record?ref=master"

  zone_id = data.terraform_remote_state.demo_hug_me_cf_zone.outputs.cf_zone_id
  name    = "*.demo-hug.me"
  type    = "A"
  value   = "127.0.0.1"
}

module "demo_hug_me_cname_aiven_replica_demodb1" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-record?ref=master"

  zone_id = data.terraform_remote_state.demo_hug_me_cf_zone.outputs.cf_zone_id
  name    = "aiven-replica-demodb1"
  proxied = true
  value   = "replica-demodb-1.aiven.cloud.com"

  # @note Remote data
  # value   = data.terraform_remote_state.aiven_replica_demodb1.outputs.db_instance_address
}

module "demo_hug_me_txt_1" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-record?ref=master"

  zone_id = data.terraform_remote_state.demo_hug_me_cf_zone.outputs.cf_zone_id
  name    = "demo-hug.me"
  type    = "TXT"
  value   = "google-site-verification=xx"
}

module "demo_hug_me_txt_3" {
  source = "git@github.com:supermetrics-public/terraform-modules-cicd-example.git//examples/cloudflare-simple-modules/cf-example-record?ref=master"

  zone_id = data.terraform_remote_state.demo_hug_me_cf_zone.outputs.cf_zone_id
  name    = "*.demo-hug.me"
  type    = "TXT"
  value   = "txt-demo-record-3"
}

