provider "ovh" {
  endpoint = var.ovh_endpoint
}

locals {
  zone = "example.com"

  dns_records = [
    {
      name = ""
      type = "A"
      ttl  = 300,
      targets = [
        "1.2.3.7",
        "1.2.3.8",
      ]
    },
    {
      name = "www"
      type = "CNAME"
      ttl  = 300,
      targets = [
        "example.hosting.io.",
      ]
    },
  ]
}

module "dns_records" {
  source = "../../"

  zone    = local.zone
  records = local.dns_records
}
