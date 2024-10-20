output "rg" {
  value = azurerm_resource_group.resource_group.name
}

output "location" {
  value = azurerm_resource_group.resource_group.location
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}



