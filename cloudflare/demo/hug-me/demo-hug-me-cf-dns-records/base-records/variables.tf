variable "aws_profile_map" {
  type        = map(string)
  description = "AWS profile (demo / dev / stage / ...)"

  default = {
    demo = "demo"
    dev  = "dev"
  }
}

variable "profile" {
  type        = string
  description = "AWS profile (demo / dev / stage / ...)"
  default     = "demo"
}

variable "profile_bucket_prefix_map" {
  type        = map(string)
  description = "S3 bucket prefix depending on the AWS profile"

  default = {
    demo = "demo-"
    dev  = "dev-"
  }
}
