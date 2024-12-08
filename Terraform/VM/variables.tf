variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  default     = "East US"
  type        = string
}

variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for VMs"
  type        = string
  sensitive   = true
}
