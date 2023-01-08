module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block = "10.20.0.0/16"
  vpc_name       = "stg-vpc"
}