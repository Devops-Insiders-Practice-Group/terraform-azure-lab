rgvar = {
  rg1 = {
    rg_name     = "rg_dev"
    rg_location = "eastus"
  }

}

vnetvar = {
  vnet1 = {
    vnet_name           = "vnet_dev"
    location            = "eastus"
    resource_group_name = "rg_dev"
    address_space       = ["10.2.0.0/16"]
  }
}

subnetvar = {
  subnet1 = {
    subnet_name             = "frontend_subnet_dev"
    resource_group_name     = "rg_dev"
    virtual_network_name    = "vnet_dev"
    address_prefixes_subnet = ["10.2.0.0/24"]
  }
  subnet2 = {
    subnet_name             = "backend_subnet_dev"
    resource_group_name     = "rg_dev"
    virtual_network_name    = "vnet_dev"
    address_prefixes_subnet = ["10.2.1.0/24"]
  }
}

pipvar = {
  pip1 = {
    pip_name            = "pip_frontend-dev"
    resource_group_name = "rg_dev"
    location            = "eastus"
  }

  pip2 = {
    pip_name            = "pip_backend-dev"
    resource_group_name = "rg_dev"
    location            = "eastus"
  }
}

vmvar = {
  vm1 = {
    nic_name             = "nic_frontend-dev"
    vm_name              = "vm_frontend-dev"
    resource_group_name  = "rg_dev"
    location             = "eastus"
    vm_size              = "Standard_DS1_v2"
    admin_username       = "devops"
    admin_password       = "Devops@4321"
    pip_name             = "pip_frontend-dev"
    subnet_name          = "frontend_subnet_dev"
    virtual_network_name = "vnet_dev"
    publisher            = "Canonical"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"
  }

  vm2 = {
    nic_name             = "nic_backend-dev"
    vm_name              = "vm_backend-dev"
    resource_group_name  = "rg_dev"
    location             = "eastus"
    vm_size              = "Standard_DS1_v2"
    admin_username       = "devops"
    admin_password       = "Devops@4321"
    pip_name             = "pip_backend-dev"
    subnet_name          = "backend_subnet_dev"
    virtual_network_name = "vnet_dev"
    publisher            = "Canonical"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"
  }
}
