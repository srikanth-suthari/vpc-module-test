terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    # The bucket should be created first in the aws s3 service
    bucket = "my-remote-state-terraform"
    # Then terraform will automatically create this key in that provided bucket
    key    = "vpc-module-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  # region = "us-east-1" this is an optional line (if we want a specific region we need to enable this)
}