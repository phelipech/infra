variable "resource_group_name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  default     = "East US"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account."
  type        = string
}

variable "storage_container_name" {
  description = "The name of the Storage Container."
  type        = string
}