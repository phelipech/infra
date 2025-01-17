terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-backend-rg"
    storage_account_name  = "terraformbackend"
    container_name        = "tfstate"
    key                   = "${path_relative_to_include()}/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1c94011e-8fa5-40ab-a5cb-eb9744bc1f1b"
  tenant_id       = "a467ae83-0827-4c0b-b9f7-4921ffad294b"
}

