#----------------------------------------------------
# Random string for naming
#----------------------------------------------------
resource "random_string" "random_4" {
  count = var.create == true ? 1 : 0

  length      = 4
  min_numeric = 2
  special     = false
  lower       = true
}

#----------------------------------------------------
# Azure Resource Group
#----------------------------------------------------
resource "azurerm_resource_group" "rg" {
  count = var.create == true ? 1 : 0

  name     = local.rg_name
  location = var.location
  tags     = var.tags
}

#----------------------------------------------------
# Azure Management Lock
#----------------------------------------------------
resource "azurerm_management_lock" "lock" {
  count = var.management_lock_level != null && var.create == true ? 1 : 0

  name       = var.management_lock_level == "CanNotDelete" ? "CanNotDelete" : "ReadOnly"
  scope      = azurerm_resource_group.rg[0].id
  lock_level = var.management_lock_level
  notes      = var.management_lock_notes
}
