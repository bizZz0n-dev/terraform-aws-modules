terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

resource "aws_cloudfront_distribution" "this" {
  enabled = true
  aliases = var.aliases
  comment = var.name

  origin {
    domain_name = var.alb_dns_name
    origin_id   = "alb-${var.name}"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "alb-${var.name}"

    # AllViewer: forwards all headers, cookies, query strings to origin
    origin_request_policy_id = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    # CachingDisabled: no CloudFront caching — SSR responses pass through
    cache_policy_id = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"

    viewer_protocol_policy = "redirect-to-https"
  }

  viewer_certificate {
    acm_certificate_arn      = var.acm_certificate_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = merge({ Name = var.name, Env = var.env }, var.tags)
}
