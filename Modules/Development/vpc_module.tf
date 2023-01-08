module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block    = "10.30.0.0/16"
  vpc_name          = "dev-vpc"
  igw_name          = "dev-igw"
  ngw_name          = "dev-ngw"
  subnet_cidr_block = "10.30.0.0/24"
  subnet_name       = "dev-subnet"
}