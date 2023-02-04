module "ec2_public" {
  source =  "../../Resources/ec2"

  ec2_name          = "stg-ec2-public"
  instance_type     = "t3.small"
  iam_role          = "stg-public-iam-role"
  iam_policy        = "stg-public-iam-policy"
  sg_name           = "stg-public-security-group"
  instance_profile  = "stg-public-instance-profile"
  subnet_id         = module.vpc.public_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
  associate_public_ip = true
}

module "ec2_private" {
  source =  "../../Resources/ec2"

  ec2_name          = "stg-ec2-private"
  instance_type     = "t3.small"
  iam_role          = "stg-private-iam-role"
  iam_policy        = "stg-private-iam-policy"
  sg_name           = "stg-private-security-group"
  instance_profile  = "stg-private-instance-profile"
  subnet_id         = module.vpc.private_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
  associate_public_ip = false
}