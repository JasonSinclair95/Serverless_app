# variable "allowed_ips" {
#   default     = {}
#   description = "VPN List of allowed IPs and Circle CI instances"
#   type        = list
# }

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  nullable = false
  default = "jason-lambda-state"
}

variable "tags" {
  description = "A map of tags to add to the S3 bucket"
  type        = map(string)
  default     = {
    team = "DevOps"
  }
  nullable = false
}

variable "aws_region" {
  description = "The AWS region to deploy the S3 bucket"
  type        = string
  default     = "us-west-2"
  nullable = false

}
