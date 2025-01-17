include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "../../../environments/common/vnet"
}

inputs = {
  subscription_id     = "1c94011e-8fa5-40ab-a5cb-eb9744bc1f1b"
  tenant_id           = "a467ae83-0827-4c0b-b9f7-4921ffad294b"
  environment         = "qa"
  location            = "eastus"
  resource_group_name = "qa-rg"
  vnet_name           = "qa-vnet"
  address_space       = ["10.0.0.0/16"]
  subnets = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
  }
  tags = {
    environment = "qa"
    owner       = "team"
  }
}
