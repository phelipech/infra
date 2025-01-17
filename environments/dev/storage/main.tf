provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

resource "azurerm_storage_account" "main" {
  name                     = "devstorageacct12345fch" 
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = true
  tags                     = var.tags
}


resource "azurerm_storage_container" "state" {
  name                  = "terraform-state"
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = "private"
}