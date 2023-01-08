module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "stg-s3-bucket"
  env                  = "staging"
}