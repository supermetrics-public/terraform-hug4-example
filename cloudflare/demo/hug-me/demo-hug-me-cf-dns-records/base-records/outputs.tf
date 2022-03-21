output "demo_hug_me_a1_cf_id" {
  description = "The record ID"
  value       = module.demo_hug_me_a1.cf_record_id
}

output "demo_hug_me_a1_cf_hostname" {
  description = "The FQDN of the record"
  value       = module.demo_hug_me_a1.cf_hostname
}

output "demo_hug_me_a1_cf_proxied" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = module.demo_hug_me_a1.cf_proxied
}

output "demo_hug_me_a2_cf_id" {
  description = "The record ID"
  value       = module.demo_hug_me_a2.cf_record_id
}

output "demo_hug_me_a2_cf_hostname" {
  description = "The FQDN of the record"
  value       = module.demo_hug_me_a2.cf_hostname
}

output "demo_hug_me_a2_cf_proxied" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = module.demo_hug_me_a2.cf_proxied
}

output "demo_hug_me_txt_1_cf_id" {
  description = "The record ID"
  value       = module.demo_hug_me_txt_1.cf_record_id
}

output "demo_hug_me_txt_1_cf_hostname" {
  description = "The FQDN of the record"
  value       = module.demo_hug_me_txt_1.cf_hostname
}

output "demo_hug_me_txt_1_cf_proxied" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = module.demo_hug_me_txt_1.cf_proxied
}

output "demo_hug_me_txt_3_cf_id" {
  description = "The record ID"
  value       = module.demo_hug_me_txt_3.cf_record_id
}

output "demo_hug_me_txt_3_cf_hostname" {
  description = "The FQDN of the record"
  value       = module.demo_hug_me_txt_3.cf_hostname
}

output "demo_hug_me_txt_3_cf_proxied" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = module.demo_hug_me_txt_3.cf_proxied
}

output "demo_hug_me_cname_aiven_replica_demodb1_cf_id" {
  description = "The record ID"
  value       = module.demo_hug_me_cname_aiven_replica_demodb1.cf_record_id
}

output "demo_hug_me_cname_aiven_replica_demodb1_cf_hostname" {
  description = "The FQDN of the record"
  value       = module.demo_hug_me_cname_aiven_replica_demodb1.cf_hostname
}

output "demo_hug_me_cname_aiven_replica_demodb1_cf_proxied" {
  description = "Shows whether this record can be proxied, must be true if setting proxied=true"
  value       = module.demo_hug_me_cname_aiven_replica_demodb1.cf_proxied
}
