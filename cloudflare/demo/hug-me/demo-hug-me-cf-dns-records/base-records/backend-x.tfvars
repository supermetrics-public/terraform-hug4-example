# Store state in S3, with DynamoDB locking
bucket         = "x-tf-states"
key            = "base-rec-tf-state/terraform.tfstate"
profile        = "x-aws-profile"
region         = "eu-north-1"
encrypt        = "true"
dynamodb_table = "x-dynamo-table-name"
