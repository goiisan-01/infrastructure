module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "dev-ec2"
  instance_type     = "t3.micro"
  iam_role          = "dev-iam-role"
  iam_policy        = "dev-iam=policy"
  sg_name           = "dev-security-group"
  instance_profile  = "dev-instance-profile"
  subnet_id         = module.vpc.subnet_id
  vpc_id            = module.vpc.vpc_id
  vpc_cidr          = module.vpc.vpc_cidr
}
