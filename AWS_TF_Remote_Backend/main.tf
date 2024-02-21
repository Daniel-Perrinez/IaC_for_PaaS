terraform {
  backend "s3" {
    bucket = "your-remote-state-bucket"
    key    = "path/to/your/statefile.tfstate"
    region = "your-preferred-region"
    dynamodb_table = "your-dynamodb-table"
  }
}