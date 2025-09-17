provider "aws" {
  region = var.availability_zone
}

terraform {
  backend "s3" {
    bucket         = "yahea-thakeb-project1-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "yahea-thakeb-terraform-state-block"
  }
}