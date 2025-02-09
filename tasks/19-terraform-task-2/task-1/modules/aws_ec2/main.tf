resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  user_data              = var.user_data
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "nginx_sg" {
  name_prefix = "nginx-sg-"

  # Allow HTTP traffic from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTPS traffic from anywhere
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH access (optional)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
