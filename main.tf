data "aws_lex_slot_type" "lex_slot_type_lookup" {
  for_each = var.lex_slot_type_lookup

  name    = each.value.name
  region  = each.value.region
  version = each.value.version
}

