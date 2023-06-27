variable "location" {
  type        = string
  description = "The location/region where the network interface will be created."
  sensitive   = false
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the network interface will be created."
  sensitive   = false
}
variable "nic_name" {
  type        = string
  description = "The name of the network interface."
  sensitive   = false
}
variable "ip_configuration_name" {
  type        = string
  description = "The name of the IP configuration."
  sensitive   = false
}
variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the network interface will be created."
  sensitive   = false
}
variable "public_ip_address_id" {
  type        = string
  description = "The ID of the public IP address to associate with the network interface."
  sensitive   = false
  default     = null
}
variable "private_ip_address_allocation" {
  type        = string
  description = "The method to use for allocating the private IP address of the network interface."
  sensitive   = false
  default     = "Dynamic"
}
variable "tags" {
  description = "Tags to associate with the Network Interface"
  type        = map(string)
  default     = {}
  sensitive   = false
}
