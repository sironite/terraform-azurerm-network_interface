# This resource block defines an Azure network interface.
resource "azurerm_network_interface" "this" {
  # The name of the network interface.
  name = nic_name
  # The location of the network interface.
  location = var.location
  # The name of the resource group that the network interface belongs to.
  resource_group_name = var.resource_group_name

  # This block defines the IP configuration for the network interface.
  ip_configuration {
    # The name of the IP configuration.
    name = var.ip_configuration_name
    # The ID of the subnet that the network interface is connected to.
    subnet_id = var.subnet_id
    # The ID of the public IP address that the network interface is associated with.
    public_ip_address_id = var.public_ip_address_id
    # The method used to allocate the private IP address for the network interface.
    private_ip_address_allocation = var.private_ip_address_allocation
  }
  
  # The name of the resource group that the network interface belongs to.
  tags = var.tags

}


