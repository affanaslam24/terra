provider "aws" {
    region = "us-east-1"
}

variable "amiid" {
  description = "value"
}

variable "instance" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage"="t2.xlarge"
  }
}

resource "aws_instance" "ecec" {
  ami = var.amiid
  instance_type = lookup(var.instance, terraform.workspace, "t2.micro")

}