module "autoscaling" {
  source =  "../../Resources/autoscaling"

  ec2_name            = "dev-asg-private"
  instance_type       = "t3.small"
  # iam_role            = "dev-private-iam-role"
  # iam_policy          = "dev-private-iam-policy"
  # sg_name             = "dev-private-security-group"
  # instance_profile    = "dev-private-instance-profile"
  # subnet_id           = module.vpc.private_subnet_id
  # vpc_id              = module.vpc.vpc_id
  # vpc_cidr            = module.vpc.vpc_cidr
  # associate_public_ip = false
}