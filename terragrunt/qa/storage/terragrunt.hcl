include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "../../../environments/common/storage"
}

inputs = {
  subscription_id     = "1c94011e-8fa5-40ab-a5cb-eb9744bc1f1b"
  tenant_id           = "a467ae83-0827-4c0b-b9f7-4921ffad294b"
  environment         = "qa"
  location            = "eastus"
  resource_group_name = "qa-rg"
  storage_account_name = "qastorageaccount35"
  tags = {
    environment = "qa"
    owner       = "team"
  }
}

