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
  type        = string
  description = "The type of VPN authentication to use."
  default     = null
}

variable "vpn_protocols" {
  type        = string
  description = "The VPN protocols to use."
  default     = null
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

variable "client_root_certificate_name" {
  type        = string
  description = "The name of the client root certificate."
  default     = null
}

variable "public_cert_data" {
  type        = string
  description = "The public certificate data."
  default     = null
}

variable "server_adress" {
  type        = string
  description = "The address of the RADIUS server."
  default     = null
}

variable "server_secret" {
  type        = string
  description = "The secret for the RADIUS server."
  default     = null
}

variable "server_score" {
  type        = string
  description = "The score for the RADIUS server."
  default     = null
}

variable "tumbprint" {
  type        = string
  description = "The thumbprint for the client root certificate."
  default     = null
}

variable "server_root_certificate_name" {
  type        = string
  description = "The name of the server root certificate."
  default     = null
}

variable "dh_group" {
  type        = string
  description = "The Diffie-Hellman group to use."
  default     = null
}

variable "ike_encryption" {
  type        = string
  description = "The IKE encryption to use."
  default     = null
}

variable "ike_integrity" {
  type        = string
  description = "The IKE integrity to use."
  default     = null
}

variable "ipsec_encryption" {
  type        = string
  description = "The IPSec encryption to use."
  default     = null
}

variable "ipsec_integrity" {
  type        = string
  description = "The IPSec integrity to use."
  default     = null
}

variable "pfs_group" {
  type        = string
  description = "The Perfect Forward Secrecy group to use."
  default     = null
}

variable "sa_data_size_kilobytes" {
  type        = string
  description = "The size of the SA data in kilobytes."
  default     = null
}

variable "sa_life_time_seconds" {
  type        = string
  description = "The lifetime of the SA in seconds."
  default     = null
}