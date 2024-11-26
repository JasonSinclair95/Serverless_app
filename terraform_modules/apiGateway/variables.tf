variable "name" {
  description = "The name of the API Gateway"
  type        = string
  nullable    = false
}

variable "description" {
  description = "The description of the API Gateway"
  type        = string
  nullable    = false
  default     = "This is a simple API Gateway"
}

variable "path" {
  description = "The path of the API Gateway"
  type        = string
  nullable    = false
}

variable "http_method" {
  description = "The HTTP method of the API Gateway"
  type        = string
  nullable    = false
  default     = "GET"
}

variable "uri" {
  description = "The URI of the API Gateway, should contain invoke arn of lambda function"
  type        = string
  nullable    = false
}

variable "integration_http_method" {
  description = "The integration HTTP method of the API Gateway"
  type        = string
  nullable    = false
  default     = "POST"
}

variable "type" {
  description = "The type of the lambda function"
  type        = string
  default     = "AWS_PROXY"
  nullable    = false
}

variable "function_name" {
  description = "The name of the lambda function"
  type        = string
  nullable    = false
}

variable "stage_name" {
  description = "The name of the stage"
  type        = string
  nullable    = false
  default     = "dev"
}
