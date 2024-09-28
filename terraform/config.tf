resource "aws_config_configuration_recorder" "recorder" {
  name     = "config_recorder"
  role_arn = aws_iam_role.config_role.arn
}

resource "aws_config_rule" "s3_bucket_encryption" {
  name     = "s3-bucket-encryption"
  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_ENCRYPTION"
  }
}
