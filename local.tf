# https://www.terraform.io/docs/configuration/locals.html.
locals {
  # Map of records per target.
  records = flatten([
    for record in var.records : [
      for target in record.targets : {
        name   = record.name
        type   = record.type
        ttl    = record.ttl
        target = target
      }
    ]
  ])
}
