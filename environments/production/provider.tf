terraform {
  backend "s3" {
    bucket         = "jason-lambda-state"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform_state"
  }
}

provider "aws" {
  region = "eu-west-2"
}
