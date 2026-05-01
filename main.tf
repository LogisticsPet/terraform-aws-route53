module "zones" {
  source  = "terraform-aws-modules/route53/aws"
  version = "6.5.0"

  create_zone = true

  name    = var.domain
  comment = "Logistic domain zone"

  force_destroy = true
  tags = {
    type = "public"
  }
}
