output "nameservers" {
  value       = module.zones.name_servers
  description = "List of Nameservers for Route 53 zone."
}

output "zone_arn" {
  value       = module.zones.arn
  description = "Route 53 zone ARN."
}

output "zone_id" {
  value       = module.zones.id
  description = "Route 53 zone ID."
}
