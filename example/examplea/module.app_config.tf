module "app_config" {
  source        = "../../"
  tags          = var.tags
  identity_name = "example-identity"
  app_config = {
    name                  = "app-config-example"
    sku                   = "standard"
    public_network_access = "Enabled"
  }
}
