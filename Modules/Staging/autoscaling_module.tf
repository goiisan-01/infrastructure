module "autoscaling" {
  source =  "../../Resources/autoscaling"

  ec2_name            = "stg-asg-ec2"
  instance_type       = "t3.small"
  iam_role            = "stg-asg-role"
  iam_policy          = "stg-asg-policy"
  sg_name             = "stg-asg-ec2-security-group"
  instance_profile    = "stg-asg-ec2-instance-profile"
  subnet_id           = module.vpc.public_subnet_id
  subnet_id_2         = module.vpc.public_subnet_id_2
  vpc_id              = module.vpc.vpc_id
  vpc_cidr            = module.vpc.vpc_cidr
  # associate_public_ip = false
  env_short            = "stg-asg-elb"
}