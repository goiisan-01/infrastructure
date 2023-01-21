module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "dev-s3-bucket-8989"
  env                  = "development"
  env_short            = "dev"
}