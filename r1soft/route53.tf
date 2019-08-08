resource "aws_route53_record" "example" {
  zone_id = "${var.zone_id}"
  name    = "${var.record}.${var.domain}"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.example.public_ip}"]
}
