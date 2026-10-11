resource "oci_generative_ai_agent_provisioned_capacity" "generative_ai_agent_provisioned_capacities" {
  for_each = var.generative_ai_agent_provisioned_capacities

  compartment_id  = each.value.compartment_id
  display_name    = each.value.display_name
  number_of_units = each.value.number_of_units
  defined_tags    = each.value.defined_tags
  description     = each.value.description
  freeform_tags   = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

