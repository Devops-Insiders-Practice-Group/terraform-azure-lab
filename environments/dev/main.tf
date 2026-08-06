variable "rgvar" {}
variable "vnetvar" {}
variable "subnetvar" {}
variable "pipvar" {}
variable "vmvar" {}

module "rg" {
  source = "../../child_modules/azurerm_resource_group"
  rgvar = var.rgvar
}

module "vnet" {
  source = "../../child_modules/azurerm_vnet"
  vnetvar = var.vnetvar
}

module "subnet" {
  source = "../../child_modules/azurerm_subnet"
  subnetvar = var.subnetvar
}

module "pip" {
  source = "../../child_modules/azurerm_publicip"
  pipvar = var.pipvar
}

module "vm" {
  source = "../../child_modules/azurerm_nic_vm"
  vmvar = var.vmvar
}


