module "vpc" {
  source =  "../../Resources/vpc"

  vpc_cidr_block              = "10.30.0.0/16"
  vpc_name                    = "dev-vpc"
  igw_name                    = "dev-igw"
  ngw_name                    = "dev-ngw"
  public_subnet_cidr_block    = "10.30.0.0/24"
  public_subnet_cidr_block_2  = "10.30.2.0/24"
  private_subnet_cidr_block   = "10.30.1.0/24"
  private_subnet_cidr_block_2 = "10.30.3.0/24"
  public_subnet_name          = "dev-public-subnet"
  private_subnet_name         = "dev-private-subnet"
  public_route_table          = "dev-public-route-table"
  private_route_table         = "dev-private-route-table"
}