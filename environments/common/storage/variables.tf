variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "environment" {
  description = "Nazwa środowiska, np. dev, qa, prod"
  type        = string
}

variable "location" {
  description = "Lokalizacja zasobu w Azure, np. East US"
  type        = string
}

variable "resource_group_name" {
  description = "Nazwa grupy zasobów, w której utworzony będzie Storage Account"
  type        = string
}

variable "tags" {
  description = "Tagi przypisane do zasobu"
  type        = map(string)
  default     = {}
}