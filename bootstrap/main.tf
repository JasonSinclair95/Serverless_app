resource "aws_s3_bucket" "lambda_state" {

  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.lambda_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# resource "aws_s3_bucket_public_access_block" "this" {
#   block_public_acls       = true
#   block_public_policy     = true
#   bucket                  = aws_s3_bucket.lambda_state.id
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
#   bucket = aws_s3_bucket.lambda_state.id
#   rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm = "AES256"
#     }
#   }
# }

# data "aws_iam_policy_document" "lambda_state" {
#   policy_id = "TrustedSourceIPs"
#   statement {
#     actions = ["s3:*"]
#     condition {
#       test     = "NotIpAddress"
#       variable = "aws:SourceIp"
#       values   = var.allowed_ips
#     }
#     effect = "Deny"
#     principals {
#       identifiers = ["*"]
#       type        = "*"
#     }
#     resources = [
#       "${aws_s3_bucket.lambda_state.arn}",
#       "${aws_s3_bucket.lambda_state.arn}/*"
#     ]
#     sid = "IPAllow"
#   }
# }

# resource "aws_s3_bucket_policy" "this" {
#   bucket = aws_s3_bucket.lambda_state.id
#   policy = data.aws_iam_policy_document.lamda_state.json
# }
