module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block    = "10.20.0.0/16"
  vpc_name          = "stg-vpc"
  igw_name          = "stg-igw"
  ngw_name          = "stg-ngw"
  subnet_cidr_block = "10.20.0.0/24"
  subnet_name       = "stg-subnet"
}