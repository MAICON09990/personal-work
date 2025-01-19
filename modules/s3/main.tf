resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket
  
  versioning {
    enabled = "true"
  }

  lifecycle_rule {
   id = "log"
   enabled = "true"

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
  tags = {
    Name        = "ust bucket"
    Environment = "Dev"
    Terraform = "true"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  
}


resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}