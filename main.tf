data "azuredevops_descriptor" "descriptor_lookup" {
  for_each = var.descriptor_lookup

  storage_key = each.value.storage_key

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

