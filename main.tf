terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "jsiney-terraform-state"
    key    = "tf/keys/prometheus/terraform.tfstate"
    region = "eu-west-2"

  }

}