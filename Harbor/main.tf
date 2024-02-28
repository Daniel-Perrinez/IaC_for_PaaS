provider "aws" {
  region = var.aws_region
}

locals {
  name   = "Harbor_Host_PaaS"
  region = var.aws_region

  tags = {
    Example    = local.name
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.large"

  tags = {
    Name = local.name
}