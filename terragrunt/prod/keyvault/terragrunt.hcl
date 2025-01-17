include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "../../../environments/common/keyvault"
}

inputs = {
  environment         = "prod"
  location            = "eastus"
  resource_group_name = "prod-rg"
  admin_object_id     = "YOUR_ADMIN_OBJECT_ID" # Zmień na rzeczywiste Object ID
  container_name      = "prod-tfstate"
  tags = {
    environment = "prod"
    owner       = "team"
  }
}

