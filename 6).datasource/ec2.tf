resource "aws_instance" "terraform-demo" {
  ami           = data.aws_ami.terraform-demo.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all-ports.id]

  tags = {
    Name = "terraform-demo"
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