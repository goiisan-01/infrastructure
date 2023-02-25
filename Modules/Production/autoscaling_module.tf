module "autoscaling" {
  source =  "../../Resources/autoscaling"

  ec2_name            = "dev-asg-private"
  instance_type       = "t3.small"
  # iam_role            = "dev-private-iam-role"
  # iam_policy          = "dev-private-iam-policy"
  sg_name             = "dev-asg-security-group"
  # instance_profile    = "dev-private-instance-profile"
  subnet_id           = module.vpc.public_subnet_id
  subnet_id_2         = module.vpc.public_subnet_id_2
  vpc_id              = module.vpc.vpc_id
  vpc_cidr            = module.vpc.vpc_cidr
  # associate_public_ip = false
  env_short            = "prd-elb"
}