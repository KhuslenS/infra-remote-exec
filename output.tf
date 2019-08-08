output "domain"
  value = "http://${aws_route53_record.name}:8080"
output "username"
  value = "${var.user}"
