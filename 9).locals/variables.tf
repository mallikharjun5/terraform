variable "project" {
  default = "roboshp"
}

variable "environment" {
  default = "env"
}

variable "ami_id" {
    type = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
  default = "t3.micro"
}


# variable "common_name" {
#   default = "${var.project}${var.environment}"
# }

variable "common_tags" {
  type = map
  default = {
    Project = "terraform-demo"
    Environment = "dev"
    Terraform = "true"
  }

}

variable "sg_name" {
    type = string
  default = "allow-all-ports"
}

variable "cidr" {
  type = list 
  default = ["0.0.0.0/0"]
}

variable "egress_from_port" {
  type = number
  default = 0
}

variable "egress_to_port" {
  type = number
  default = 0
}

variable "ingress_from_port" {
  type = number
  default = 0
}

variable "ingress_to_port" {
  type = number
  default = 0
}

variable "protocol" {
  type = string
  default = "-1"
}