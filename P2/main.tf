/*

resource "aws_instance" "example" {
  provider = aws.value1
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
    key_name = "aws-login"
  

  tags = {
    Name = "Azam"
  }
  }

  resource "aws_instance" "example2" {
   ami =  "ami-0862be96e41dcbf74" #different ami image code would be present in different regions
   instance_type = "t2.micro"
   provider = aws.value2

  
   tags = {Name="Affan"}
  }*/

  

# Create an EC2 instance using the input variables
resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance
  provider = aws.value1
  key_name = var.key_name

  tags = {Name="Affan"}
  
}