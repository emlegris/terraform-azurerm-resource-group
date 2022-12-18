output "id" {
  value       = element(concat(azurerm_resource_group.rg.*.id, tolist([""])), 0)
  description = "The resource ID of the resource group."
}

output "name" {
  value       = element(concat(azurerm_resource_group.rg.*.name, tolist([""])), 0)
  description = "The name of the resource group."
}

output "location" {
  value       = element(concat(azurerm_resource_group.rg.*.location, tolist([""])), 0)
  description = "The location of the resource group."
}