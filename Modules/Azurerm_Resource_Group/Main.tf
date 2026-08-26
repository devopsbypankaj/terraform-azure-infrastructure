variable "rgs" {
  type = any
}


resource "azurerm_resource_group" "rg-infra" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}
