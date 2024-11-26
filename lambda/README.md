## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.77.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.77.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/resources/iam_role) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/resources/lambda_function) | resource |
| [archive_file.this](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the lambda function | `string` | n/a | yes |
| <a name="input_handler"></a> [handler](#input\_handler) | The handler of the lambda function | `string` | n/a | yes |
| <a name="input_lambda_function_file_name"></a> [lambda\_function\_file\_name](#input\_lambda\_function\_file\_name) | The name of the lambda function file | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime of the lambda function | `string` | `"python3.8"` | no |
| <a name="input_source_dir"></a> [source\_dir](#input\_source\_dir) | The source directory of the lambda function | `string` | `"lambda_function_files"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to the lambda function | `map(string)` | <pre>{<br/>  "team": "DevOps"<br/>}</pre> | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the lambda function | `string` | `"zip"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | The ARN of the lambda function |
| <a name="output_lambda_function_filename_base"></a> [lambda\_function\_filename\_base](#output\_lambda\_function\_filename\_base) | The base filename of the lambda function without the extension |
| <a name="output_lambda_function_name"></a> [lambda\_function\_name](#output\_lambda\_function\_name) | The name of the lambda function |
