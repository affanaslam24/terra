terraform {
  backend "s3" {
    bucket = "affan-demo-backend-1"
    key    = "affan/terraform.tfstate"
    region = "us-east-1"
  }
}
