# Terraform module | AzureRM - Network Interface

This Terraform module is designed to create a Network Interface for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`network network_interface`

```hcl
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

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
