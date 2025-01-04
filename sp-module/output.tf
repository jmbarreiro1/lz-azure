output "rg_sp" {
  value = azurerm_resource_group.resource_group_sp.name
}

output "location_sp" {
  value = azurerm_resource_group.resource_group_sp.location
}

output "vnet_name_sp" {
  value = azurerm_virtual_network.vnet_sp.name
}

output "subnet_ids_sp" {
  description = "Map of subnet IDs by name"
  value       = { for subnet, details in azurerm_subnet.subnet_sp : subnet => details.id }
}

output "subnet_address_prefixes_sp" {
  description = "Map of subnet address prefixes by name"
  value       = { for subnet, details in azurerm_subnet.subnet_sp : subnet => details.address_prefixes }
}


