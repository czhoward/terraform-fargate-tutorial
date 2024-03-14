provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket  = "my-bucket"
    key     = "ecs.tfstate"
    region  = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
