variable "instances" {
  default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
  # default = {
  #   mongodb = "t3.micro"
  #   redis = "t3.micro"
  #   mysql = "t3.small"
  # }

  # default = {
  #   mongodb = {
  #     ami = "EXAMP9876544"
  #     instance_type = "t2,large"                #if we want seperate specs for a instance 
  #   }
  #   redis = "t3.micro"
  #   mysql = "t3.small"
  # }
}

variable "zone_id" {
  default = "Z01508593JUYY9SHIBG2D"
}

variable "domain_name" {
  default = "mallikharjundevops.fun"
}