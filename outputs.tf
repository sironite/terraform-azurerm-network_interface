output "network_interface_id" {
  value       = azurerm_network_interface.this.id
  description = "The ID of the network interface."
}
output "network_interface_name" {
  value       = azurerm_network_interface.this.name
  description = "The name of the network interface."
}
output "network_interface_location" {
  value       = azurerm_network_interface.this.location
  description = "The location/region where the network interface is created."
}
output "network_interface_resource_group_name" {
  value       = azurerm_network_interface.this.resource_group_name
  description = "The name of the resource group where the network interface is created."
}
output "network_interface_ip_configuration_name" {
  value       = azurerm_network_interface.this.ip_configuration[0].name
  description = "The name of the IP configuration associated with the network interface."
}
output "network_interface_subnet_id" {
  value       = azurerm_network_interface.this.ip_configuration[0].subnet_id
  description = "The ID of the subnet associated with the IP configuration."
}
output "network_interface_public_ip_address_id" {
  value       = azurerm_network_interface.this.ip_configuration[0].public_ip_address_id
  description = "The ID of the public IP address associated with the IP configuration."
}
output "network_interface_private_ip_address_allocation" {
  value       = azurerm_network_interface.this.ip_configuration[0].private_ip_address_allocation
  description = "The method used to allocate the private IP address of the network interface."
}
