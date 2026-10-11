output "dns_rrsets_id" {
  description = "Map of id values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no id are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_rrsets_compartment_id" {
  description = "Map of compartment_id values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dns_rrsets_domain" {
  description = "Map of domain values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no domain are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "dns_rrsets_items" {
  description = "Map of items values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no items are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.items if v.items != null && length(v.items) > 0 }
}
output "dns_rrsets_rtype" {
  description = "Map of rtype values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no rtype are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.rtype if v.rtype != null && length(v.rtype) > 0 }
}
output "dns_rrsets_scope" {
  description = "Map of scope values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no scope are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "dns_rrsets_view_id" {
  description = "Map of view_id values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no view_id are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.view_id if v.view_id != null && length(v.view_id) > 0 }
}
output "dns_rrsets_zone_name_or_id" {
  description = "Map of zone_name_or_id values across all dns_rrsets, keyed the same as var.dns_rrsets except keys with no zone_name_or_id are omitted"
  value       = { for k, v in oci_dns_rrset.dns_rrsets : k => v.zone_name_or_id if v.zone_name_or_id != null && length(v.zone_name_or_id) > 0 }
}

