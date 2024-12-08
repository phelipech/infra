provider "azurerm" {
  features {}
}

# Frontend VM
resource "azurerm_linux_virtual_machine" "frontend_vm" {
  name                = "frontend-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"

  admin_username = var.admin_username
  admin_password = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.frontend_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.sa.primary_blob_endpoint
  }
}

# Backend VM
resource "azurerm_linux_virtual_machine" "backend_vm" {
  name                = "backend-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"

  admin_username = var.admin_username
  admin_password = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.backend_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.sa.primary_blob_endpoint
  }
}
