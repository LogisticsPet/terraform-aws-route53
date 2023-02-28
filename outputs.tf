output "nameservers" {
  value = toset(module.zones.route53_zone_name_servers)
}
