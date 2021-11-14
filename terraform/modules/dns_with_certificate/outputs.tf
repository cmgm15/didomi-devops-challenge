output "route53_zone" {
  value = aws_route53_zone.this.zone_id
}

output "acm_id" {
  value = aws_acm_certificate.this.id
}
