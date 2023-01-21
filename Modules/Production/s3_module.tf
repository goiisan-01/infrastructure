module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "prd-s3-bucket-8989"
  env                  = "production"
  env_short            = "prd"
}