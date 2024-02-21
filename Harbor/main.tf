provider "aws" {
  region = var.region
}

locals {
  name   = "Harbor_Host_PaaS"
  region = var.region

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