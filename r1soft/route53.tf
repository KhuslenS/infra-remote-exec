resource "aws_route53_record" "r1soft" {
  zone_id = "${var.zone_id}"
  name    = "${var.record}.${var.domain}"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.r1soft.public_ip}"]
}
