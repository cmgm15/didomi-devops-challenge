/**
  * # README.md
  * 
  * Terraform module for creation of DNS Hosted zone in route53 and ACM certificate.
  * This include the validation of the certificate created with the DNS.
*/

resource "aws_route53_zone" "this" {
  name          = var.domain_name
  force_destroy = true

  tags = var.tags
}

resource "aws_acm_certificate" "this" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}

resource "aws_route53_record" "this" {
  for_each = {
    for dvo in aws_acm_certificate.this.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.this.route53_zone
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.example.arn
  validation_record_fqdns = [for record in aws_route53_record.this : record.fqdn]
}
