output "vm_id" {
  description = "ID maszyny wirtualnej"
  value       = azurerm_virtual_machine.main.id
}

output "vm_private_ip" {
  description = "Prywatny adres IP maszyny wirtualnej"
  value       = azurerm_network_interface.main.private_ip_address
}

output "nic_id" {
  description = "ID Network Interface Card (NIC)"
  value       = azurerm_network_interface.main.id
}
