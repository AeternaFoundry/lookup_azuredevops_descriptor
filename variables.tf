variable "descriptor_lookup" {
  description = <<EOT
Map of descriptor_lookup, attributes below
Required:
    - storage_key
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    storage_key = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.descriptor_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.storage_key))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

