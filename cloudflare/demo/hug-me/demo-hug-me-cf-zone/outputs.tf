output "cf_zone_id" {
  description = "The zone ID."
  value       = module.demo_hug_me_cf_zone.cf_zone_id
}

output "cf_plan" {
  description = "The name of the commercial plan to apply to the zone."
  value       = module.demo_hug_me_cf_zone.cf_plan
}

output "cf_status" {
  description = "Status of the zone. Valid values: active, pending, initializing, moved, deleted, deactivated."
  value       = module.demo_hug_me_cf_zone.cf_status
}

output "cf_name_servers" {
  description = "Cloudflare-assigned name servers. This is only populated for zones that use Cloudflare DNS."
  value       = module.demo_hug_me_cf_zone.cf_name_servers
}
