resource "aws_instance" "terraform" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all-ports.id]

  tags = {
    Name = "terraform" 
  }

  # provisioner "local-exec" {
  #   command = "echo ${self.private_ip} > inventory"
  #   on_failure = continue
  # }

    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = self.public_ip
    }

    provisioner "remote-exec" {
      inline = [
        "sudo dnf install nginx -y",
        "sudo systemctl enable nginx",
        "sudo systemctl enable nginx"
       ]
    }
}
resource "aws_security_group" "allow-all-ports" {
    name = "allow-all-ports"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

     ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow-all-ports"
    }
}