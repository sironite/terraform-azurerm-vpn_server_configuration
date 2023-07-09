output "vpn_server_configuration_id" {
  description = "The ID of the VPN server configuration."
  value = azurerm_vpn_server_configuration.example.id
}

output "vpn_server_configuration_name" {
  description = "The name of the VPN server configuration."
  value = azurerm_vpn_server_configuration.example.name
}