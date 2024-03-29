# https://www.terraform.io/docs/language/providers/index.html.

# https://registry.terraform.io/providers/ovh/ovh.
provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_application_key
  application_secret = var.ovh_application_secret
  consumer_key       = var.ovh_consumer_key
}
