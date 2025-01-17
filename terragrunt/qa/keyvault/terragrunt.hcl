include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "../../../environments/common/keyvault"
}

inputs = {
  environment         = "qa"
  location            = "eastus"
  resource_group_name = "qa-rg"
  admin_object_id     = "YOUR_ADMIN_OBJECT_ID" # Zmień na rzeczywiste Object ID
  container_name      = "qa-tfstate"
  tags = {
    environment = "qa"
    owner       = "team"
  }
}

