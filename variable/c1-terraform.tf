
#terraform block

terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.2"
    }
  }
}

# Provider block

provider "aws" {
  profile = "default"
  region  = var.aws_region
}