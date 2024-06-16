terraform {
  backend "s3" {
    bucket = "terraform-state1979"
    key    = "terraform/backend"
    region = "us-east-2"
  }

}