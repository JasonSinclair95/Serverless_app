module "hello_world_lambda_function" {
  source = "./terraform_modules/lambda"
  function_name = "helloworld"
  handler = "hello_world.lambda_handler"
  lambda_function_file_name = "hello_world.py"
}

module "hello_world_api_gateway" {
    source = "./terraform_modules/apiGateway"
    name = "hello-world-api"
    path = "hello"
    uri = module.hello_world_lambda_function.lambda_function_arn
    function_name = module.hello_world_lambda_function.lambda_function_name
    depends_on = [ module.hello_world_lambda_function ]
}
