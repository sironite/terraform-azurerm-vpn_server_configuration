variable "vpn_server_configuration_name" {
  type        = string
  description = "The name of the VPN server configuration."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the VPN server configuration."
}

variable "location" {
  type        = string
  description = "The location in which to create the VPN server configuration."

}

variable "vpn_authentication_types" {
  type        = list(string)
  description = "The type of VPN authentication to use."
  default     = []
}

variable "vpn_protocols" {
  type        = list(string)
  description = "The VPN protocols to use."
  default     = []
}

variable "audience" {
  type        = string
  description = "The audience for Azure AD authentication."
  default     = null
}

variable "issuer" {
  type        = string
  description = "The issuer for Azure AD authentication."
  default     = null
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID for Azure AD authentication."
  default     = null
}
