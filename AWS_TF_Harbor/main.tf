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

# resource "aws_instance" "harbor_ec2" {
#   ami           = "ami-0440d3b780d96b29d"
#   instance_type = "t2.large"
#   subnet_id     = "subnet-0576679eaf3324036"

#   tags = {
#     Name = local.name
#   }
# }