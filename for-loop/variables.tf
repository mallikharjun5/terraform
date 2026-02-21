variable "instances" {
  default = [ "mongodb", "redis", "rabbitmq", "mysql", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
  default = "Z01508593JUYY9SHIBG2D"
}

variable "domain_name" {
  default = "mallikharjundevops.fun"
}