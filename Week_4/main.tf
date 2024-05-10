resource "azurerm_virtual_network" "vn_giuli" {
  name                = "vn_giuli"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = {
    source = "backend"
  }
}

resource "azurerm_subnet" "azurerm_snt_1" {
  name                 = "subnet_1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vn_giuli.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "azurerm_ni_1" {
  name                = "ni_1"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipname1"
    subnet_id                     = azurerm_subnet.azurerm_snt_1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "azurerm_vm_1" {
  name                = "vm_1"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size_vm
  admin_username      = var.adminusername_vm
  computer_name       = var.computername_vm
  network_interface_ids = [
    azurerm_network_interface.azurerm_ni_1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  admin_ssh_key {
    username   = var.adminusername_vm
    public_key = var.ssh_vm
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}