provider "aws" {
    region = var.location
  
}

resource "aws_instance" "ec2-mumbai" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    instance_name =var.instance_name
  }
}

resource "aws_security_group" "instance" {

  name = var.security_group_name

        ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

         ingress {
                from_port = 443
                to_port = 443
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
        }
}


output "public_ip" {
  value       = aws_instance.ec2-mumbai.public_ip
  description = "The public IP of the Instance"
  sensitive = true
}

