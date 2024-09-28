provider "aws" {
  region = var.region
}

resource "aws_guardduty_detector" "example" {
  enable = true
}

resource "aws_guardduty_member" "dev_member" {
  account_id = aws_organizations_account.dev_account.id
  detector_id = aws_guardduty_detector.example.id
}

resource "aws_guardduty_member" "prod_member" {
  account_id = aws_organizations_account.prod_account.id
  detector_id = aws_guardduty_detector.example.id
}
