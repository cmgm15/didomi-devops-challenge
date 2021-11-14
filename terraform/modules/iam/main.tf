resource "aws_iam_user" "cicd" {
  name = "${var.name}-gitlab-cicd"
}

resource "aws_iam_access_key" "cicd" {
  user = aws_iam_user.cicd.name
}

resource "aws_iam_user_policy" "cicd" {
  name   = "${var.name}-gitlab-cicd-policy"
  user   = aws_iam_user.cicd.name
  policy = file("${path.module}/policies/git_lab_cicd_policy.json")
}

resource "aws_iam_role" "rds_proxy" {
  name               = "${var.name}-rds_proxy-role"
  assume_role_policy = file("${path.module}/policies/rds_proxy_role.json")
}

data "aws_iam_policy_document" "rds_proxy_secret_policy" {
  statement {
    actions = [
      "secretsmanager:GetRandomPassword",
      "secretsmanager:CreateSecret",
      "secretsmanager:ListSecrets"
    ]

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "secretsmanager:*"
    ]

    resources = [
      var.secret_arn,
    ]
  }
}

resource "aws_iam_role_policy" "rds_proxy" {
  name   = "${var.name}-rds_proxy-policy"
  role   = aws_iam_role.rds_proxy.id
  policy = data.aws_iam_policy_document.rds_proxy_policy.json
}
