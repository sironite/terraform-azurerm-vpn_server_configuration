<!-- BEGIN_TF_DOCS -->
 ## VPN Server Configuration
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](Invullen) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_server_configuration)

# Usage - Module

## VPN Server Configuration

```hcl

module "vpn_server_configuration" {
  source  = "sironite/vpn_server_configuration/azurerm"
  version = "X.X.X"

  vpn_server_configuration_name = "example-vpn-server-configuration"
  resource_group_name           = "example-resource-group"
  location                      = "WestEurope"
  vpn_authentication_types      = "AzureAD"

  audience  = "https://example.com"
  issuer    = "https://example.com"
  tenant_id = "00000000-0000-0000-0000-000000000000"
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
| [azurerm_vpn_server_configuration.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_server_configuration) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| location | The location in which to create the VPN server configuration. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the VPN server configuration. | `string` | yes |
| vpn\_server\_configuration\_name | The name of the VPN server configuration. | `string` | yes |
| audience | The audience for Azure AD authentication. | `string` | no |
| issuer | The issuer for Azure AD authentication. | `string` | no |
| tenant\_id | The tenant ID for Azure AD authentication. | `string` | no |
| vpn\_authentication\_types | The type of VPN authentication to use. | `list(string)` | no |
| vpn\_protocols | The VPN protocols to use. | `list(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpn\_server\_configuration\_id | The ID of the VPN server configuration. |
| vpn\_server\_configuration\_name | The name of the VPN server configuration. |

## Related documentation
<!-- END_TF_DOCS -->