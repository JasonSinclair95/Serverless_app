resource "aws_api_gateway_rest_api" "this" {
  name        = var.name
  description = var.description
}

resource "aws_api_gateway_resource" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  parent_id   = aws_api_gateway_rest_api.this.root_resource_id
  path_part   = var.path

  depends_on = [aws_api_gateway_rest_api.this]
}

resource "aws_api_gateway_method" "this" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  resource_id   = aws_api_gateway_resource.this.id
  http_method   = var.http_method
  authorization = "NONE"
  depends_on    = [aws_api_gateway_resource.this, aws_api_gateway_rest_api.this]
}

resource "aws_api_gateway_integration" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = aws_api_gateway_resource.this.id
  http_method = aws_api_gateway_method.this.http_method

  integration_http_method = var.integration_http_method
  type                    = var.type
  uri                     = var.uri
  depends_on              = [aws_api_gateway_method.this, aws_api_gateway_resource.this, aws_api_gateway_rest_api.this]
}

resource "aws_lambda_permission" "this" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"

  # The /*/* portion grants access from any method on any resource
  # within the API Gateway "REST API".
  source_arn = "${aws_api_gateway_rest_api.this.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id

  lifecycle {
    create_before_destroy = true
  }
  depends_on = [aws_api_gateway_rest_api.this, time_sleep.wait_for_rest_api]
}

resource "aws_api_gateway_stage" "this" {
  deployment_id = aws_api_gateway_deployment.this.id
  rest_api_id   = aws_api_gateway_rest_api.this.id
  stage_name    = var.stage_name
  depends_on    = [aws_api_gateway_deployment.this, aws_api_gateway_rest_api.this, time_sleep.wait_for_rest_api]
}

resource "time_sleep" "wait_for_rest_api" {
  depends_on = [aws_api_gateway_rest_api.this]

  create_duration = "10s"
}
