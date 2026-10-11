variable "lex_slot_type_lookup" {
  description = <<EOT
Map of lex_slot_type_lookup, attributes below
Required:
    - name
Optional:
    - region
    - version
EOT

  type = map(object({
    name    = string
    region  = optional(string)
    version = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

