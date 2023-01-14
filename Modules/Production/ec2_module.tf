module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "prd-ec2"
  instance_type     = "t3.medium"
  iam_role          = "prd-iam-role"
  iam_policy        = "prd-iam=policy"
  sg_name           = "prd-security-group"
  instance_profile  = "prd-instance-profile"
}