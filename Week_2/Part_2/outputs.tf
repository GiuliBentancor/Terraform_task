output "azurerm_linux_virtual_machine_id" {
  value = azurerm_linux_virtual_machine.azurerm_vm[*].id
}

output "azurerm_linux_virtual_machine_private_ip_addresses" {
  value = azurerm_linux_virtual_machine.azurerm_vm[*].private_ip_addresses
}

output "azurerm_linux_virtual_machine_public_ip_address" {
  value = azurerm_linux_virtual_machine.azurerm_vm[*].public_ip_address
}

