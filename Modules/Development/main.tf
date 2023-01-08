provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tfstate-project-bucket"
    key    = "development/infrastructure-tfstate"
    region = "us-east-1"
  }
}


