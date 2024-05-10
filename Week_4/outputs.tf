output "azurerm_linux_virtual_machine_id" {
  value = azurerm_linux_virtual_machine.azurerm_vm_1.id
}

output "azurerm_linux_virtual_machine_private_ip_addresses" {
  value = azurerm_linux_virtual_machine.azurerm_vm_1.private_ip_address
}