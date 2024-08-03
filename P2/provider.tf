provider "aws" {
  region = var.provide
  alias = "value1"
}

provider "aws" {
  region = "us-east-2"
  alias = "value2"
}