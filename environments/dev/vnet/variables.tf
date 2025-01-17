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
  description = "Nazwa grupy zasobów, w której utworzony będzie VNet"
  type        = string
}

variable "address_space" {
  description = "Zakres adresów IP dla Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Podsieci w sieci wirtualnej, z nazwą jako kluczem i zakresem adresów jako wartością"
  type        = map(string)
  default     = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
  }
}

variable "tags" {
  description = "Tagi przypisane do zasobu"
  type        = map(string)
  default     = {}
}