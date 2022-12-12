variable "tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "rg_name" {
  type    = string
  default = "pike"
}


variable "identity_name" {
  type = string
}

variable "key_name" {
  type    = string
  default = "app-config-key"
}

variable "key_vault_name" {
  type    = string
  default = "app-config-key-vault"
}