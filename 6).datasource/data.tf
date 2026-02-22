data "aws_ami" "terraform-demo" {
    owners =    ["973714476881"]
    most_recent = true

filter {
    name = "name"
    values = ["RHEL-9-DevOps-Practice"]
}

filter {
    name = "root-device-type"
    values = ["ebs"]
}

filter {
    name = "virtualization-type"
    values = ["hvm"]
}
}

output "terraform-demo" {
  value = data.aws_ami.terraform.id         # querying the info of aws_ami
}