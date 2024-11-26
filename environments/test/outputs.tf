output "api_gateway_endpoint" {
  description = "The URL of the API Gateway endpoint"
  value       = "${module.test_hello_world_api_gateway.api_gateway_endpoint}${module.test_hello_world_api_gateway.api_resource_path}"
}
