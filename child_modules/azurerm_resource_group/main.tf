variable "rgvar" {
 type = map(any)
}
resource "azurerm_resource_group" "rgs" {
  for_each = var.rgvar
  name = each.value.rg_name
  location = each.value.rg_location
}