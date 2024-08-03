variable "instance" {
  description = "EC2 instance type"
}

variable "provide" {
  description = "provider"
}

# Define an input variable for the EC2 instance AMI ID
variable "ami_id" {
  description = "EC2 AMI ID"
}
variable "key_name" {
    description = "keyname"
}
