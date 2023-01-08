module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "prd-s3-bucket"
  env                  = "production"
}