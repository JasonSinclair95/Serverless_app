output "api_gateway_endpoint" {
  description = "The URL of the API Gateway endpoint"
  value       = aws_api_gateway_stage.this.invoke_url
}

output "api_resource_path" {
  description = "The path of the API Gateway resource"
  value       = aws_api_gateway_resource.this.path
}
