variable "location" {}
variable "resource_group_name" {}
variable "vm_name" {}
variable "admin_username" {}
variable "admin_password" {}
variable "vnet_name" {}
variable "subnet_name" {}
variable "tags" {
  type = map(string)
}
variable "subscription_id" {}