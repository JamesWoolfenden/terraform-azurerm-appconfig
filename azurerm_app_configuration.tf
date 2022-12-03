resource "azurerm_app_configuration" "example" {
  name                       = "appConf2"
  resource_group_name        = var.rg_name
  location                   = var.location
  sku                        = "standard"
  local_auth_enabled         = true
  public_network_access      = "Enabled"
  purge_protection_enabled   = false
  soft_delete_retention_days = 1

  identity {
    type = "UserAssigned"
    identity_ids = [
      azurerm_user_assigned_identity.example.id,
    ]
  }

  encryption {
    key_vault_key_identifier = azurerm_key_vault_key.example.id
    identity_client_id       = azurerm_user_assigned_identity.example.client_id
  }

  tags = var.tags
}