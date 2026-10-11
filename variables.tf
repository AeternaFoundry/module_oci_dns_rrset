variable "dns_rrsets" {
  description = <<EOT
Map of dns_rrsets, attributes below
Required:
    - domain
    - rtype
    - zone_name_or_id
Optional:
    - compartment_id
    - scope
    - view_id
    - items (block):
        - domain (required)
        - rdata (required)
        - rtype (required)
        - ttl (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain          = string
    rtype           = string
    zone_name_or_id = string
    compartment_id  = optional(string)
    scope           = optional(string)
    view_id         = optional(string)
    items = optional(list(object({
      domain = string
      rdata  = string
      rtype  = string
      ttl    = number
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

