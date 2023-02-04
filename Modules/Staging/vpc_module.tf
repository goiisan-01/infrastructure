module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block    = "10.20.0.0/16"
  vpc_name          = "stg-vpc"
  igw_name          = "stg-igw"
  ngw_name          = "stg-ngw"
  public_subnet_cidr_block  = "10.20.0.0/24"
  private_subnet_cidr_block = "10.20.1.0/24"
  public_subnet_name        = "stg-public-subnet"
  private_subnet_name       = "stg-private-subnet"
  public_route_table        = "stg-public-route-table"
  private_route_table       = "stg-private-route-table"
}