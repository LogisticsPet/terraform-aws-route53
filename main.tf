module "zones" {
  source  = "terraform-aws-modules/route53/aws//modules/zones"
  version = "4.1.0"

  zones = {
    (var.domain) = {
      comment = "Logistic domain zone"
      tags = {
        type = "public"
      }
      force_destroy = true
    }
  }
}
