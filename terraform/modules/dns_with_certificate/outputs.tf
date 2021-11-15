output "route53_zone" {
  value       = aws_route53_zone.this.zone_id
  description = "Route53 zone id of hosted zone created"
}

output "acm_id" {
  value       = aws_acm_certificate.this.id
  description = "ACM certificate id"
}
