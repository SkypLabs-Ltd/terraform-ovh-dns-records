# ----------------------------------------
# Required Variables
# ----------------------------------------

variable "zone" {
  description = "The DNS zone to add the records to."
  type        = string
}

variable "records" {
  description = "DNS records."
  type = set(object({
    name    = string
    type    = string
    ttl     = number
    targets = list(string)
  }))
}

# ----------------------------------------
# Optional Variables
# ----------------------------------------
