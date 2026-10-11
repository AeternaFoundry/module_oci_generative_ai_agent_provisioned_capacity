variable "generative_ai_agent_provisioned_capacities" {
  description = <<EOT
Map of generative_ai_agent_provisioned_capacities, attributes below
Required:
    - compartment_id
    - display_name
    - number_of_units
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    display_name    = string
    number_of_units = number
    defined_tags    = optional(map(string))
    description     = optional(string)
    freeform_tags   = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

