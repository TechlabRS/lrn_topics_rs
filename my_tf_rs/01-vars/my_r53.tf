resource "aws_route53_zone" "main" {
  name = "raghas.com"
}

resource "aws_route53_zone" "dev" {
  name = "dev.raghas.com"

  tags = {
    Environment = "dev"
  }
}

# may be its not recorded causes dups
# resource "aws_route53_record" "dev-ns" {
#   zone_id = aws_route53_zone.main.zone_id
#   name    = "dev.raghas.main.com"
#   type    = "NS"
#   ttl     = "30"
#   records = aws_route53_zone.dev.name_servers
# } 
