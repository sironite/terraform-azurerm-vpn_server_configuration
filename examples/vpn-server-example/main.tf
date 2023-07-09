
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

