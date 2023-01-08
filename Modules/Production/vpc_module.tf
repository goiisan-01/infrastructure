module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block = "10.10.0.0/16"
  vpc_name       = "prd-vpc"
}