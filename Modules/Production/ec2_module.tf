module "ec2_public" {
  source =  "../../Resources/ec2"

  ec2_name          = "prd-ec2-public"
  instance_type     = "t3.small"
  iam_role          = "prd-public-iam-role"
  iam_policy        = "prd-public-iam-policy"
  sg_name           = "prd-public-security-group"
  instance_profile  = "prd-public-instance-profile"
  subnet_id         = module.vpc.public_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
  associate_public_ip = true
}

module "ec2_private" {
  source =  "../../Resources/ec2"

  ec2_name          = "prd-ec2-private"
  instance_type     = "t3.small"
  iam_role          = "prd-private-iam-role"
  iam_policy        = "prd-private-iam-policy"
  sg_name           = "prd-private-security-group"
  instance_profile  = "prd-private-instance-profile"
  subnet_id         = module.vpc.private_subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
  associate_public_ip = false
}