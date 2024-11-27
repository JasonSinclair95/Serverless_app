terraform {
  backend "s3" {
    bucket = "jason-lambda-state"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}
