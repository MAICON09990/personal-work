output "bucket" {
  value = aws_s3_bucket.s3_bucket.id
}

output "table" {
  value = aws_dynamodb_table.terraform_locks.id
}