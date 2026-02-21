resource "aws_route53_record" "roboshop" {
    count = 4
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"      #for eg mongobb.mallikharjundevops.fun
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}