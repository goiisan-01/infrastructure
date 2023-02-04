module "ec2_public" {
  source =  "../../Resources/ec2"

  ec2_name          = "stg-ec2-public"
  instance_type     = "t3.micro"
  iam_role          = "stg-iam-role"
  iam_policy        = "stg-iam-policy"
  sg_name           = "stg-security-group"
  instance_profile  = "stg-instance-profile"
  subnet_id         = module.vpc.public_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
}

module "ec2_private" {
  source =  "../../Resources/ec2"

  ec2_name          = "stg-ec2-private"
  instance_type     = "t3.micro"
  iam_role          = "stg-iam-role"
  iam_policy        = "stg-iam-policy"
  sg_name           = "stg-security-group"
  instance_profile  = "stg-instance-profile"
  subnet_id         = module.vpc.private_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
}