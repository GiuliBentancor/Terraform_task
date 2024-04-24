# Create vn
resource "azurerm_virtual_network" "vn_giuli" {
  name                = "vn_giuli"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "GiuliGroup"
}