resource "aws_securityhub_account" "main" {}

resource "aws_securityhub_member" "dev_member" {
  account_id = var.dev_account_id
}

resource "aws_securityhub_member" "prod_member" {
  account_id = var.prod_account_id
}
