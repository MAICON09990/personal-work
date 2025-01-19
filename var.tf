variable "bucket" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "ust-bucket-mg"
}

variable "table" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "ust-terraform-lock-table-mg"
}