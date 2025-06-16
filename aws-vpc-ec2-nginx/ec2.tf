// EC2 Instance 
resource "aws_instance" "ngix-server" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.nano"
  subnet_id     = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt install nginx -y
            sudo systemctl enable nginx
            sudo systemctl start nginx
            EOF

  tags = {
    Name = "NginxServer"
  }
}
