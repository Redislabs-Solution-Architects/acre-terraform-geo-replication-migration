provider "azurerm" {
  environment = var.cloud_name
  features {
    template_deployment {
      delete_nested_items_during_deletion = false
    }
  }
}
