output "azurerm_linux_virtual_machine_id" {
  value = module.azurerm_vm.vm_id
  }

output "azurerm_linux_virtual_machine_private_ip_addresses" {
  value = module.azurerm_vm.vm_private_ip_addresses
}
