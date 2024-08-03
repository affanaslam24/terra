output "publicIP" {
  description = "publicIPADD"
  value = aws_instance.example.public_ip
}

output "keykey" {
    description = "keynamepair"
  value = aws_instance.example.key_name
}