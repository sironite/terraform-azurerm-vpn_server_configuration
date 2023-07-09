resource "azurerm_vpn_server_configuration" "example" {
  name                     = var.vpn_server_configuration_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  vpn_authentication_types = var.vpn_authentication_types
  vpn_protocols            = var.vpn_protocols

  dynamic "azure_active_directory_authentication" {
    for_each = contains(var.vpn_authentication_types, "AAD") ? [1] : []
    content {
      audience  = var.audience
      issuer    = var.issuer
      tenant    = var.tenant_id
    }
  }

  dynamic "client_root_certificate" {
    for_each = contains(var.vpn_authentication_types, "Certificate") ? [1] : []
    content {
      name             = var.client_root_certificate_name
      public_cert_data = var.public_cert_data
    }
  }
}