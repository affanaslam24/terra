/*

data "aws_instances" "example" {
  # No filters applied, fetches all instances
   instance_state_names = ["running", "stopped"]
}
/*data "aws_instances" "running" {
  instance_state_names = [ "running" ]
}

# Fetch stopped instances
data "aws_instances" "stopped" {
  instance_state_names = [ "terminated" ]
}

output "instance_ids" {
  value = data.aws_instances.example.ids
}

output "running_instance_ids" {
  value = data.aws_instances.running.ids
}

output "stopped_instance_ids" {
  value = data.aws_instances.stopped.ids
}
output "instance_ids" {
  value = data.aws_instances.example.ids
}
*/

provider "aws" {
  region = "us-west-1"  # Replace with your region
}

resource "aws_instance" "imported" {
  count = length(var.instance_ids)

  # Placeholder values
  ami           = "ami-xxxxxxxx"  # Replace with actual AMI ID
  instance_type = "t2.micro"       # Replace with actual instance type
}
