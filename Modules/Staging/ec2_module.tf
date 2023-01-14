module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "stg-ec2"
  instance_type     = "t3.micro"
  iam_role          = "stg-iam-role"
  iam_policy        = "stg-iam=policy"
  sg_name           = "stg-security-group"
  instance_profile  = "stg-instance-profile"
}