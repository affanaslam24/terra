output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.example_instance.public_ip
}
/*
output "name" {
    description = "value"
    value = aws_instance.example2.public_dns
  
}*/