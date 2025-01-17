remote_state {
  backend = "azurerm"

  config = {
    resource_group_name   = "terraform-backend-rg"
    storage_account_name  = "terraformbackenddev123"
    container_name        = "qa-tfstate"
    key                   = "${path_relative_to_include()}/terraform.tfstate"
  }
}

inputs = {
  subscription_id = "1c94011e-8fa5-40ab-a5cb-eb9744bc1f1b"
  tenant_id       = "a467ae83-0827-4c0b-b9f7-4921ffad294b"
}
