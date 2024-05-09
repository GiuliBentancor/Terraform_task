resource "azurerm_network_interface" "azurerm_ni" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipname1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "azure_vm" {
  name                = var.instance_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = var.adminusername_vm
  computer_name       = var.computername_vm
  network_interface_ids = [
    azurerm_network_interface.azurerm_ni.id,
  ]

  tags = {
    department = "IT"
    application = "tf-level-up"
    }

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