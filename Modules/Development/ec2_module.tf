module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "dev-ec2"
  instance_type     = "t3.micro"
  iam_role          = "dev-iam-role"
  iam_policy        = "dev-iam=policy"
  sg_name           = "dev-security-group"
  instance_profile  = "dev-instance-profile"
}
