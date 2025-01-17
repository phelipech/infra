output "vnet_id" {
  description = "ID Virtual Network"
  value       = azurerm_virtual_network.main.id
}

output "vnet_address_space" {
  description = "Zakres adresów IP dla Virtual Network"
  value       = azurerm_virtual_network.main.address_space
}

output "subnet_ids" {
  description = "ID wszystkich podsieci w sieci wirtualnej"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.id }
}

output "subnet_address_prefixes" {
  description = "Zakresy adresów IP dla wszystkich podsieci"
  value       = { for key, subnet in azurerm_subnet.subnets : key => subnet.address_prefixes }
}
