<!-- BEGIN_TF_DOCS -->
 # Network Interface
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-network_interface/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface)

# Usage - Module

## Network Interface
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

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| ip\_configuration\_name | The name of the IP configuration. | `string` | yes |
| location | The location/region where the network interface will be created. | `string` | yes |
| nic\_name | The name of the network interface. | `string` | yes |
| resource\_group\_name | The name of the resource group where the network interface will be created. | `string` | yes |
| subnet\_id | The ID of the subnet where the network interface will be created. | `string` | yes |
| private\_ip\_address\_allocation | The method to use for allocating the private IP address of the network interface. | `string` | no |
| public\_ip\_address\_id | The ID of the public IP address to associate with the network interface. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_interface\_id | The ID of the network interface. |
| network\_interface\_ip\_configuration\_name | The name of the IP configuration associated with the network interface. |
| network\_interface\_location | The location/region where the network interface is created. |
| network\_interface\_name | The name of the network interface. |
| network\_interface\_private\_ip\_address\_allocation | The method used to allocate the private IP address of the network interface. |
| network\_interface\_public\_ip\_address\_id | The ID of the public IP address associated with the IP configuration. |
| network\_interface\_resource\_group\_name | The name of the resource group where the network interface is created. |
| network\_interface\_subnet\_id | The ID of the subnet associated with the IP configuration. |

## Related documentation
<!-- END_TF_DOCS -->