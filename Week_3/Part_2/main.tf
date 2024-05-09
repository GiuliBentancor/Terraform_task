resource "azurerm_virtual_network" "week3_vn" {
  name                = "week3_vn"
  address_space       = ["10.0.0.0/16"]
  location            = local.location
  resource_group_name = local.resource_group_name
}

resource "azurerm_subnet" "week3_subnet" {
  name                 = "week3_subnet"
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.week3_vn.name
  address_prefixes     = ["10.0.2.0/24"]
}

module "azurerm_vm" {
  source = "./modules/my-custom-vm"
  size = var.size
  resource_group_name = local.resource_group_name
  location = local.location
  subnet_id = azurerm_subnet.week3_subnet.id
  instance_name = "week3_wm"
  network_interface_name = "week3_network_interface"  
}