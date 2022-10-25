data "aws_route53_zone" "public" {
  name         = "devopsp66.online"
  private_zone = false
}

data "aws_acm_certificate" "public" {
  domain   = "*.devopsp66.online"
  statuses = ["ISSUED"]
}