terraform {
  backend "remote" {
    organization = "SFBTraining"
    workspaces {
      name = "Testing"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}
