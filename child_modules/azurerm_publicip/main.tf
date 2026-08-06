variable "pipvar" {
  type = map(any)
}

resource "azurerm_public_ip" "pip" {
  for_each = var.pipvar
  name = each.value.pip_name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  allocation_method = "Static"
}