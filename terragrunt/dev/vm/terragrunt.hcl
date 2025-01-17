include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../environments/dev/vm"
}

inputs = {
  subscription_id     = "1c94011e-8fa5-40ab-a5cb-eb9744bc1f1b"
  tenant_id           = "a467ae83-0827-4c0b-b9f7-4921ffad294b"
  environment         = "dev"
  location            = "eastus"
  resource_group_name = "dev-rg"
  vm_name             = "dev-vm"
  admin_username      = "azureuser"
  admin_password      = "SecurePassword123!"
  vnet_name           = "dev-vnet"
  subnet_name         = "subnet1"
  tags = {
    environment = "dev"
    owner       = "team"
  }
}
