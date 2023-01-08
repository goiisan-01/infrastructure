module "s3" {
  source =  "../../Resources/s3"

  bucket_name          = "stg-s3-bucket-8989"
  env                  = "staging"
}