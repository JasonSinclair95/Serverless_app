<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| aws | 5.77.0 |

### Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | 5.77.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/resources/iam_role) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/resources/lambda_function) | resource |
| [archive_file.this](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/5.77.0/docs/data-sources/iam_policy_document) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| function\_name | The name of the lambda function | `string` | n/a | yes |
| handler | The handler of the lambda function | `string` | n/a | yes |
| lambda\_function\_file\_name | The name of the lambda function file | `string` | n/a | yes |
| runtime | The runtime of the lambda function | `string` | `"python3.8"` | no |
| source\_dir | The source directory of the lambda function | `string` | `"lambda_function_files"` | no |
| tags | A map of tags to add to the lambda function | `map(string)` | <pre>{<br/>  "team": "DevOps"<br/>}</pre> | no |
| type | The type of the lambda function | `string` | `"zip"` | no |

### Outputs

| Name | Description |
|------|-------------|
| lambda\_function\_arn | The ARN of the lambda function |
| lambda\_function\_filename\_base | The base filename of the lambda function without the extension |
| lambda\_function\_name | The name of the lambda function |
<!-- END_TF_DOCS -->