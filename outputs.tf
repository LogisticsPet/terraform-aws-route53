output "nameservers" {
  value = module.zones.route53_zone_name_servers[var.domain]
  description = "List of Nameservers for Route 53 zone."
}
