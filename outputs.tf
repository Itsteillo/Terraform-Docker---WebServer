output "instance_id" {
  description = "ID de la instacia EC2"
  value       = aws_instance.web_server.id
}

output "instance_public_ip" {
  description = "Direccion IP publica de la instacia EC2"
  value       = aws_instance.web_server.public_ip
}
