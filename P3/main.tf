provider "aws" {
  region = "us-east-1"
}
variable "amiIMAGE" {
  description = "value"
}

variable "KEYPAIR" {
  description = "value"
}

variable "instType" {
  description = "value"

  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stage"="t2.medium"
    "prod"="t2.xlarge"
  }
}

module "module3" {
    source = "./modules/ec2_server"
    keykey = var.KEYPAIR
    ami_image = var.amiIMAGE
    instance_type = lookup(var.instType, terraform.workspace, "t2.micro")


}