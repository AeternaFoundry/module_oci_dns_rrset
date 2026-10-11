resource "oci_dns_rrset" "dns_rrsets" {
  for_each = var.dns_rrsets

  domain          = each.value.domain
  rtype           = each.value.rtype
  zone_name_or_id = each.value.zone_name_or_id
  compartment_id  = each.value.compartment_id
  scope           = each.value.scope
  view_id         = each.value.view_id

  dynamic "items" {
    for_each = each.value.items != null ? each.value.items : []
    content {
      domain = items.value.domain
      rdata  = items.value.rdata
      rtype  = items.value.rtype
      ttl    = items.value.ttl
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

