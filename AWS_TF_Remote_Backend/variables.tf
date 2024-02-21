##
# Terraform Environment Inputs
## ------------------------------

variable "environment" {
  description = "Name of the environment"
}

variable "environment_prefix" {
  description = "A prefix to denote the type of environment being used."
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "remote_state" {
  description = "remote state prefix used"
  type        = string
}

variable "terraform_state_bucket_name" {
  description = "Bucket to store s3 remote backend"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Name of dynamodb table for holding the terraform lock file"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

