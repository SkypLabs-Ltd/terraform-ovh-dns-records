# https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/ovh_domain_zone_record.
resource "ovh_domain_zone_record" "this" {
  for_each = {
    for record in local.records :
    "${record.name}_${record.type}_${record.target}" => record
  }

  zone      = var.zone
  subdomain = each.value.name
  fieldtype = each.value.type
  ttl       = each.value.ttl
  target    = each.value.target
}

