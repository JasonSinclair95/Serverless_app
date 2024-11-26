<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| aws | >=5.77.0 |
| time | >=0.12.1 |

### Providers

| Name | Version |
|------|---------|
| aws | >=5.77.0 |
| time | >=0.12.1 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_api_gateway_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_integration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration) | resource |
| [aws_api_gateway_method.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |
| [aws_api_gateway_resource.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource) | resource |
| [aws_api_gateway_rest_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_api_gateway_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |
| [aws_lambda_permission.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [time_sleep.wait_for_rest_api](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | The description of the API Gateway | `string` | `"This is a simple API Gateway"` | no |
| function\_name | The name of the lambda function | `string` | n/a | yes |
| http\_method | The HTTP method of the API Gateway | `string` | `"GET"` | no |
| integration\_http\_method | The integration HTTP method of the API Gateway | `string` | `"POST"` | no |
| name | The name of the API Gateway | `string` | n/a | yes |
| path | The path of the API Gateway | `string` | n/a | yes |
| stage\_name | The name of the stage | `string` | `"dev"` | no |
| type | The type of the lambda function | `string` | `"AWS_PROXY"` | no |
| uri | The URI of the API Gateway, should contain invoke arn of lambda function | `string` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| api\_gateway\_endpoint | The URL of the API Gateway endpoint |
| api\_resource\_path | The path of the API Gateway resource |
<!-- END_TF_DOCS -->