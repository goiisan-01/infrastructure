module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block    = "10.10.0.0/16"
  vpc_name          = "prd-vpc"
  igw_name          = "prd-igw"
  ngw_name          = "prd-ngw"
  subnet_cidr_block = "10.10.0.0/24"
  subnet_name       = "prd-subnet"
}