module "ec2" {
  source =  "../../Resources/ec2"

  ec2_name          = "dev-ec2"
  instance_type     = "t3.micro"
}