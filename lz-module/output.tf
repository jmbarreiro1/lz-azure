output "rg" {
  value = azurerm_resource_group.resource_group.name
}

output "location" {
  value = azurerm_resource_group.resource_group.location
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "Map of subnet IDs by name"
  value       = { for subnet, details in azurerm_subnet.subnet_lz : subnet => details.id }
}

output "subnet_address_prefixes" {
  description = "Map of subnet address prefixes by name"
  value       = { for subnet, details in azurerm_subnet.subnet_lz : subnet => details.address_prefixes }
}


