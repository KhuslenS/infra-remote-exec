output "domain" {
  value = "${aws_route53_record.jenkins.name}:8080"
}
