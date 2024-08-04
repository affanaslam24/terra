provider "aws" {
    region = "us-east-1"
}

variable "instance" {
  description = "value"
}
variable "ami" {
    description = "value"
}

resource "aws_instance" "name1" {
  ami=var.ami
  instance_type = var.instance

    

  tags = {
    Name="Affan"
  }
}

resource "aws_instance" "name2" {
    count=2
  ami=var.ami
  instance_type = var.instance

  tags = {Name="Azam-${count.index+1}"}
}