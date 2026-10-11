output "descriptor_lookup_id" {
  description = "Map of id values across all descriptor_lookup, keyed the same as var.descriptor_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "descriptor_lookup_descriptor" {
  description = "Map of descriptor values across all descriptor_lookup, keyed the same as var.descriptor_lookup except keys with no descriptor are omitted"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "descriptor_lookup_storage_key" {
  description = "Map of storage_key values across all descriptor_lookup, keyed the same as var.descriptor_lookup except keys with no storage_key are omitted"
  value       = { for k, v in data.azuredevops_descriptor.descriptor_lookup : k => v.storage_key if v.storage_key != null && length(v.storage_key) > 0 }
}

