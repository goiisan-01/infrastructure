module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block              = "10.10.0.0/16"
  vpc_name                    = "prd-vpc"
  igw_name                    = "prd-igw"
  ngw_name                    = "prd-ngw"
  public_subnet_cidr_block    = "10.10.0.0/24"
  public_subnet_cidr_block_2  = "10.10.2.0/24"
  private_subnet_cidr_block   = "10.10.1.0/24"
  private_subnet_cidr_block_2 = "10.10.3.0/24"
  public_subnet_name          = "prd-public-subnet"
  private_subnet_name         = "prd-private-subnet"
  public_route_table          = "prd-public-route-table"
  private_route_table         = "prd-private-route-table"
}