output "storage_account_name" {
  description = "Nazwa Storage Account"
  value       = azurerm_storage_account.main.name
}

output "storage_account_primary_connection_string" {
  value     = azurerm_storage_account.main.primary_connection_string
  sensitive = true
}

output "state_container_name" {
  description = "Nazwa kontenera dla stanu Terraform"
  value       = azurerm_storage_container.state.name
}

