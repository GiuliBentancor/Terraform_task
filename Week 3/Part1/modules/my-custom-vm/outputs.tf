output "vm_id" {
  value = azurerm_linux_virtual_machine.azure_vm.id
}

output "vm_private_ip_addresses" {
  value = azurerm_linux_virtual_machine.azure_vm.private_ip_addresses
}
