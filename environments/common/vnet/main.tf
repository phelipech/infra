terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.environment}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  tags = var.tags
}

# Iteracja po liście podsieci
resource "azurerm_subnet" "subnets" {
  for_each            = var.subnets
  name                = each.key
  resource_group_name = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes    = [each.value]
}
