module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "prd-ec2"
  instance_type     = "t3.medium"
  iam_role          = "prd-iam-role"
  iam_policy        = "prd-iam-policy"
  sg_name           = "prd-security-group"
  instance_profile  = "prd-instance-profile"
  subnet_id         = module.vpc.subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
}