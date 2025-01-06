output "private_dns_zone_name" {
  description = "The name of the private DNS zone for the AKS cluster"
  value       = azurerm_private_dns_zone.aks.name
}

output "private_dns_zone_id" {
  description = "The ID of the private DNS zone for the AKS cluster"
  value       = azurerm_private_dns_zone.aks.id
}
