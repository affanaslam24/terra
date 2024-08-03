output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "key" {
  description = "keyname"
  value = aws_instance.example.key_name
  
}