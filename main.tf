variable "rgvar" {}

resource "azurerm_resource_group" "rg" {
  for_each = var.rgvar
  name = each.value.name
  location = each.value.location
}