provider "aws" {
  region = var.aws_region
    # assume_role {
    # role_arn = "arn:aws:iam::905418106762:role/github-actions-role"
    # }
}

locals {
  name   = "Harbor_Host_PaaS"
  region = var.aws_region

  tags = {
    Example    = local.name
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.large"

  tags = {
    Name = local.name
  }
}