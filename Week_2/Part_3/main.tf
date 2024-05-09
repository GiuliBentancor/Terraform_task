resource "azurerm_virtual_network" "vn_giuli" {
  name                = "vn_giuli"
  address_space       = ["10.0.0.0/16"]
  location            = local.location
  resource_group_name = local.resource_group_name
  tags = {
    source = "backend"
  }
}

resource "azurerm_subnet" "azurerm_snt_1" {
  name                 = "subnet_1"
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.vn_giuli.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "azurerm_ni" {
  count = var.numberOfInstances[var.environment]
  name                = "ni-${count.index}"
  location            = local.location
  resource_group_name = local.resource_group_name

  ip_configuration {
    name                          = "ipname1"
    subnet_id                     = azurerm_subnet.azurerm_snt_1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "azurerm_vm" {
  count = var.numberOfInstances[var.environment]
  name                = "vm_${count.index}"
  resource_group_name = local.resource_group_name
  location            = local.location
  size                = var.size_vm
  admin_username      = var.adminusername_vm
  computer_name       = var.computername_vm
  network_interface_ids = [
    azurerm_network_interface.azurerm_ni[count.index].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  admin_ssh_key {
    username   = var.adminusername_vm
    public_key = file("~/.ssh/azurecli.pub")
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}