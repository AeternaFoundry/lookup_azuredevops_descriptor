output "descriptor_lookup_id" {
  description = "Map of id values across all descriptor_lookup, keyed the same as var.descriptor_lookup"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.id }
}
output "descriptor_lookup_descriptor" {
  description = "Map of descriptor values across all descriptor_lookup, keyed the same as var.descriptor_lookup"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.descriptor }
}
output "descriptor_lookup_storage_key" {
  description = "Map of storage_key values across all descriptor_lookup, keyed the same as var.descriptor_lookup"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.storage_key }
}

