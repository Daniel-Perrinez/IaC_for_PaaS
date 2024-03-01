resource "aws_iam_openid_connect_provider" "iac_for_paas_oidc_provider" {
  url = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]
  thumbprint_list = ["${var.oidc_thumbprint}"]

  tags = var.tags
}


resource "aws_iam_role" "github_actions_role" {
  name               = "github-actions-role"
#   assume_role_policy = data.aws_iam_policy_document.backend-policy.json
  assume_role_policy = aws_iam_policy.backend-policy.policy
}

resource "aws_iam_policy" "backend-policy" {
  name   = "backend-policy"
  path   = "/"                                                                                             
  policy = file("${path.module}/policies/backend-policy.json") 
} 