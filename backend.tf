terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "kvin.tfstate"  #Change this
    region = "ap-southeast-1"
  }
}
resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix =  "kvin-s3bucket" # Set your bucket name here
}