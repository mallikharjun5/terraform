resource "aws_instance" "terraform" {
  #for_each = var.instances
  for_each = toset(var.instances)
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow-all-ports.id]

  tags = {
    # Name = each.key
    Name = each.value
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