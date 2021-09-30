resource "azurerm_subnet" "primary" {
  address_prefixes                               = ["10.0.1.0/24"]
  enforce_private_link_endpoint_network_policies = true
  name                                           = "redisgeek-primary-sub"
  resource_group_name                            = azurerm_resource_group.resource_group.name
  virtual_network_name                           = azurerm_virtual_network.primary.name
}

resource "azurerm_subnet" "secondary" {
  address_prefixes                               = ["10.1.1.0/24"]
  enforce_private_link_endpoint_network_policies = true
  name                                           = "redisgeek-secondary-sub"
  resource_group_name                            = azurerm_resource_group.resource_group.name
  virtual_network_name                           = azurerm_virtual_network.secondary.name
}
