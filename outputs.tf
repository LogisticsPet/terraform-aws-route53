output "nameservers" {
  value       = module.zones.route53_zone_name_servers[var.domain]
  description = "List of Nameservers for Route 53 zone."
}

output "zone_arn" {
  value = module.zones.route53_zone_zone_arn[var.domain]
}

output "zone_id" {
  value = module.zones.route53_zone_zone_id[var.domain]
}