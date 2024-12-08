output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}

output "storage_account_primary_key" {
  value = azurerm_storage_account.sa.primary_access_key
  sensitive = true
}

output "storage_container_name" {
  value = azurerm_storage_container.tfstate.name
}