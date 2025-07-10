dev_resource_group = {
rg1 = {
name = "devinfra_rg1"
location = "East US2"
}
rg2 = {
name = "devinfra_rg2"
location = "East US2"
}

<<<<<<< HEAD
rg3 = {
name = "devinfra_rg2"
location = "East US2"
}

=======
rg4 = {
name = "devinfra_rg4"
location = "East US2"
}
>>>>>>> featureprodbranch105
#Added new Rg
}

dev_virtual_network = {
    Vnet1 = {
        name = "devinfra_vnet1"
        location = "East US2"
        resource_group_name = "devinfra_rg1"
        address_space = ["10.0.0.0/16"]
    }
}
dev_subnet = {
frontendsubnet = {
    name = "devinfra_frontendsubnet"
    resource_group_name = "devinfra_rg1"
    virtual_network_name = "devinfra_vnet1"
address_prefixes = ["10.0.1.0/24"]
}

backendsubnet = {
    name = "devinfra_backendsubnet"
    resource_group_name = "devinfra_rg1"
    virtual_network_name = "devinfra_vnet1"
address_prefixes = ["10.0.2.0/24"]
}
}

dev_public_ip = {
  frontend-pip = {
    public_ip_name    = "frontend-pip"
    location            = "East US2"
    resource_group_name = "devinfra_rg1"
  },
  backend-pip = {
    public_ip_name              = "backend-pip"
    location            = "East US2"
    resource_group_name = "devinfra_rg1"
  }
}

dev_vm_configs = {
  
    frontendvm = {
    vm_name              = "monoinfra-frontendvm"
    nic_name             = "nic-frontend"
    location             = "East US2"
    resource_group_name  = "devinfra_rg1"
    size                 = "Standard_B1s"
    admin_username       = "adminazure123"
    admin_password       = "Passwordazure@123"
    subnet_name          = "devinfra_frontendsubnet"
    virtual_network_name = "devinfra_vnet1"
    public_ip_name        = "frontend-pip"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
    backendvm = {
    vm_name              = "monoinfra-backendvm"
    nic_name             = "nic-backend"
    location             = "East US2"
    resource_group_name  = "devinfra_rg1"
    size                 = "Standard_B1s"
    admin_username       = "adminazure123"
    admin_password       = "Passwordazure@123"
    subnet_name          = "devinfra_frontendsubnet"
    virtual_network_name = "devinfra_vnet1"
    public_ip_name        = "backend-pip"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
  }

}



