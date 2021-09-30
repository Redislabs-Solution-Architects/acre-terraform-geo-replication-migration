resource "azurerm_resource_group_template_deployment" "acre_cluster" {
  name                = "redisgeek-migration"
  resource_group_name = azurerm_resource_group.resource_group.name
  deployment_mode     = var.acre_deployment_mode
  template_content = templatefile(var.acre_template_path_1,
    {
      acre_name_1          = format("primary%s", random_string.acre_name_1.result),
      acre_name_2          = format("secondary%s", random_string.acre_name_2.result),
      acre_name_3          = format("temporary%s", random_string.acre_name_3.result),
      location             = var.primary-region,
      location_2           = var.secondary-region
      acre_sku             = var.acre_sku,
      acre_capacity        = var.acre_capacity,
      acre_client_protocol = var.acre_client_protocol,
      acre_eviction_policy = var.acre_eviction_policy,
      acre_cluster_policy  = var.acre_cluster_policy,
      acre_group_nickname  = random_string.acre_group_name.result,
      subscription_id      = var.subscription_id,
      resource_group_name  = azurerm_resource_group.resource_group.name,
      vnet_primary         = azurerm_virtual_network.primary.name,
      vnet_sec             = azurerm_virtual_network.secondary.name,
      subnet_primary       = azurerm_subnet.primary.name,
      subnet_sec           = azurerm_subnet.secondary.name
  })
}