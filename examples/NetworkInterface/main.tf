module "network_interface" {
  source  = "sironite/network_interface/azurerm"
  version = "X.X.X"

  name                = "nic_name"
  location            = "westeurope"
  resource_group_name = "rg_name"

  ip_configuration_name         = "ip_configuration_name"
  subnet_id                     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg_name/providers/Microsoft.Network/virtualNetworks/vnet_name/subnets/subnet_name"
  private_ip_address_allocation = "Dynamic"

}