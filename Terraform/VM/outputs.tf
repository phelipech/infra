output "frontend_vm_private_ip" {
  value = azurerm_network_interface.frontend_nic.private_ip_address
}

output "frontend_vm_public_ip" {
  value = azurerm_public_ip.frontend.ip_address
}

output "backend_vm_private_ip" {
  value = azurerm_network_interface.backend_nic.private_ip_address
}
