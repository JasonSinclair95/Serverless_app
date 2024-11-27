locals {
  # Extract lamda function filename without the extension
  lambda_function_filename_base = split(".", var.lambda_function_file_name)[0]
}

resource "random_id" "this" {
  byte_length = 6
}

resource "aws_lambda_function" "this" {
  function_name    = "${var.function_name}-${random_id.this.id}"
  filename         = "${path.module}/../../${var.source_dir}/${local.lambda_function_filename_base}/${local.lambda_function_filename_base}.zip"
  role             = aws_iam_role.this.arn
  handler          = var.handler
  source_code_hash = data.archive_file.this.output_base64sha256
  runtime          = var.runtime
  tags             = var.tags
  depends_on       = [data.archive_file.this]
}

output "lambda_function_filename_base" {
  description = "The base filename of the lambda function without the extension"
  value       = local.lambda_function_filename_base
}

data "archive_file" "this" {
  type        = var.type
  source_dir  = "${path.module}/../../${var.source_dir}/${local.lambda_function_filename_base}"
  output_path = "${path.module}/../../${var.source_dir}/${local.lambda_function_filename_base}/${local.lambda_function_filename_base}.zip"
}

data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "this" {
  name               = "${var.function_name}-lambda-function-role-${random_id.this.id}"
  assume_role_policy = data.aws_iam_policy_document.this.json
  tags               = var.tags
}
