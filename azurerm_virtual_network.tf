resource "azurerm_virtual_network" "primary" {
  name                = "redisgeek-primary"
  depends_on          = [azurerm_resource_group.resource_group]
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = ["10.0.0.0/16"]
  location            = var.primary-region
}

resource "azurerm_virtual_network" "secondary" {
  name                = "redisgeek-secondary"
  depends_on          = [azurerm_resource_group.resource_group]
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = ["10.1.0.0/16"]
  location            = var.secondary-region
}
