module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block = "10.40.0.0/16"
}