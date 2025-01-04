output "rg_lz" {
  value = azurerm_resource_group.resource_group_lz.name
}

output "location_lz" {
  value = azurerm_resource_group.resource_group_lz.location
}

output "vnet_name_lz" {
  value = azurerm_virtual_network.vnet_lz.name
}

output "subnet_ids_lz" {
  description = "Map of subnet IDs by name"
  value       = { for subnet, details in azurerm_subnet.subnet_lz : subnet => details.id }
}

output "subnet_address_prefixes_lz" {
  description = "Map of subnet address prefixes by name"
  value       = { for subnet, details in azurerm_subnet.subnet_lz : subnet => details.address_prefixes }
}


