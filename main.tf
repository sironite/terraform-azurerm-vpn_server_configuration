resource "azurerm_vpn_server_configuration" "example" {
  name                     = var.vpn_server_configuration_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  vpn_authentication_types = var.vpn_authentication_types
  vpn_protocols            = var.vpn_protocols

  dynamic "azure_active_directory_authentication" {
    for_each = var.vpn_authentication_types == "AzureAD" ? [1] : []
    content {
      audience  = var.audience
      issuer    = var.issuer
      tenant_id = var.tenant_id
    }
  }

  dynamic "client_root_certificate" {
    for_each = var.vpn_authentication_types == "Certificate" ? [1] : []
    content {
      name             = var.client_root_certificate_name
      public_cert_data = var.public_cert_data
    }
  }

  dynamic "radius" {
    for_each = var.vpn_authentication_types == "Radius" ? [1] : []
    content {
      radius {
        server {
          adress = var.server_adress
          secret = var.server_secret
          score  = var.server_score
        }
        client_root_certificate {
          name      = var.client_root_certificate_name
          tumbprint = var.tumbprint
        }
        server_root_certificate {
          name             = var.server_root_certificate_name
          public_cert_data = var.public_cert_data
        }
      }
    }
  }


  ipsec_policy {
    dh_group               = var.dh_group
    ike_encryption         = var.ike_encryption
    ike_integrity          = var.ike_integrity
    ipsec_encryption       = var.ipsec_encryption
    ipsec_integrity        = var.ipsec_integrity
    pfs_group              = var.pfs_group
    sa_data_size_kilobytes = var.sa_data_size_kilobytes
    sa_life_time_seconds   = var.sa_life_time_seconds
  }
}