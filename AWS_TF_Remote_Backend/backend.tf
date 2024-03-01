resource "aws_s3_bucket" "paas-terraform-remote-state-bucket" {
  bucket  = var.terraform_state_bucket_name
  lifecycle {
    prevent_destroy = true
  }
  tags = var.tags
}

resource "aws_dynamodb_table" "tf-remote-state-lock" {
  name = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  lifecycle {
    prevent_destroy = true
  }
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = var.tags
}