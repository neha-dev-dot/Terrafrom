output "instance_public_ip" {
  description = "The public IP address of the ec2 instance"
  value = aws_instance.ngix-server.public_ip
}

output "instance_url" {
  description = "The URL to access the nginx server"
  value = "http://${aws_instance.ngix-server.public_ip}"
}