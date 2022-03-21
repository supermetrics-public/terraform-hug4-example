data "terraform_remote_state" "demo_hug_me_cf_zone" {
  backend = "local"
  config = {
    path = "../../../../.tfstate-cloudflare/demo/hug-me/demo-hug-me-cf-zone/terraform.tfstate"
  }
}

# Other remote state files
/**
data "terraform_remote_state" "aiven_replica_demodb1" {
  backend = "s3"

  config = {
    bucket  = "aws-demo-hug-tf-states"
    key     = "aiven-replica-demodb1-tf-state/terraform.tfstate"
    profile = "demo-aws-profile"
    region  = "eu-north-1"
  }
}

data "terraform_remote_state" "demo_hug_me_cf_zone" {
  backend = "gcs"

  config = {
    bucket  = "gcs-demo-hug-tf-states"
    prefix = "cloudflare/demo/zone"
  }
}

*/

