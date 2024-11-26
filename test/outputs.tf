output "api_gateway_endpoint" {
  description = "The URL of the API Gateway endpoint"
  value = "${module.hello_world_api_gateway.api_gateway_endpoint}${module.hello_world_api_gateway.api_resource_path}"
}
