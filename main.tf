#----------------------------------------------------
# Random string for naming
#----------------------------------------------------
resource "random_string" "random_4" {
  length      = 4
  min_numeric = 2
  special     = false
  lower       = true
}

#----------------------------------------------------
# Azure Resource Group
#----------------------------------------------------
resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.location
  tags     = var.tags
}

#----------------------------------------------------
# Azure Management Lock
#----------------------------------------------------
resource "azurerm_management_lock" "lock" {
  count = var.management_lock_level != null ? 1 : 0

  name       = var.management_lock_level == "CanNotDelete" ? "CanNotDelete" : "ReadOnly"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.management_lock_level
  notes      = var.management_lock_notes
}
