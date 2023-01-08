module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "dev-s3-bucket"
  env                  = "development"
}