provider "azurerm" {
  features {
     app_configuration {
      purge_soft_delete_on_destroy = true
      recover_soft_deleted         = true
    }
  }
}
