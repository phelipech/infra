output "keyvault_id" {
  description = "ID Key Vault"
  value       = azurerm_key_vault.main.id
}

output "keyvault_uri" {
  description = "URI Key Vault, używane do zarządzania sekretami"
  value       = azurerm_key_vault.main.vault_uri
}

