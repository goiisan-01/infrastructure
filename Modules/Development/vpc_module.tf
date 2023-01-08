module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block = "10.30.0.0/16"
  vpc_name       = "dev-vpc"
}