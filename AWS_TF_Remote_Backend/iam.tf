resource "aws_iam_openid_connect_provider" "iac_for_paas_oidc_provider" {
  url = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]
  thumbprint_list = var.oidc_thumbprint_list

  tags = var.tags
}

# resource "aws_iam_role" "github_actions_role" {
#   name               = "github-actions-role"
#   assume_role_policy = data.aws_iam_policy_document.custom_trust_policy.json
# }

# data "aws_iam_policy_document" "custom_trust_policy" {
#   statement {
#     effect = "Allow"
#     actions = ["sts:AssumeRole","sts:AssumeRoleWithWebIdentity"]
#   }
# }
