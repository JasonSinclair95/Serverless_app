variable "type" {
    description = "The type of the lambda function"
    type        = string
    default     = "zip"
    nullable = false
}
variable "source_dir" {
    description = "The source directory of the lambda function"
    type        = string
    default =  "lambda_function_files"
    nullable = false
}

variable "function_name" {
    description = "The name of the lambda function"
    type        = string
    nullable = false
}

variable "lambda_function_file_name" {
    description = "The name of the lambda function file"
    type        = string
    nullable = false
}

variable "runtime" {
    description = "The runtime of the lambda function"
    type        = string
    default     = "python3.8"
    nullable = false
}

variable "handler" {
    description = "The handler of the lambda function"
    type        = string
    nullable = false
}

variable "tags" {
    description = "A map of tags to add to the lambda function"
    type        = map(string)
    default     = {
        team = "DevOps"
    }
    nullable = false
}
