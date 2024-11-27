terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.77.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">=0.12.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
