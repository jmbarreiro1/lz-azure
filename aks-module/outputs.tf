output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "The ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_admin_config" {
  description = "The Kubernetes admin config"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
}

output "kube_config" {
  description = "The Kubernetes config for clients"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}
