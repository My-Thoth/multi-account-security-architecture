resource "aws_organizations_organization" "main" {
  feature_set = "ALL"
}

# Add your organizational unit and account resources here


resource "aws_organizations_account" "dev_account" {
  name  = "Development Account"
  email = "dev@example.com"
}

resource "aws_organizations_account" "prod_account" {
  name  = "Production Account"
  email = "prod@example.com"
}

output "dev_account_id" {
  value = aws_organizations_account.dev_account.id
}

output "prod_account_id" {
  value = aws_organizations_account.prod_account.id
}
