resource "azurerm_virtual_network" "week3_3_vn" {
  name                = var.vn_name
  address_space       = ["10.0.0.0/24"]
  location            = var.location
  resource_group_name = var.resource_group_name
}