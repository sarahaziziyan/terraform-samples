terraform {

  backend "s3" {
    bucket = "terraform-backend-sarah"
    key    = "build/coloring-app/terraform.tfstate"
    region = "ap-southeast-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}

