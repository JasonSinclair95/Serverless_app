## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=5.77.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >=0.12.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=5.77.0 |
| <a name="provider_time"></a> [time](#provider\_time) | >=0.12.1 |

## Modules

No modules.

## Resources

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the API Gateway | `string` | `"This is a simple API Gateway"` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the lambda function | `string` | n/a | yes |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | The HTTP method of the API Gateway | `string` | `"GET"` | no |
| <a name="input_integration_http_method"></a> [integration\_http\_method](#input\_integration\_http\_method) | The integration HTTP method of the API Gateway | `string` | `"POST"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the API Gateway | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | The path of the API Gateway | `string` | n/a | yes |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | The name of the stage | `string` | `"dev"` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the lambda function | `string` | `"AWS_PROXY"` | no |
| <a name="input_uri"></a> [uri](#input\_uri) | The URI of the API Gateway, should contain invoke arn of lambda function | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_endpoint"></a> [api\_gateway\_endpoint](#output\_api\_gateway\_endpoint) | The URL of the API Gateway endpoint |
| <a name="output_api_resource_path"></a> [api\_resource\_path](#output\_api\_resource\_path) | The path of the API Gateway resource |
