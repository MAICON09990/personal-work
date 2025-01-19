terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.tfstate"
    bucket         = "ust-bucket-mg"
    region         = "us-east-2"
    dynamodb_table = "ust-terraform-lock-table-mg"
  }
}