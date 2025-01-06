resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name           = var.default_node_pool_name
    vm_size        = var.default_node_pool_vm_size
    node_count     = var.default_node_pool_node_count
    os_disk_size_gb = var.default_node_pool_os_disk_size_gb
    vnet_subnet_id = var.subnet_id
    max_pods = var.default_node_pool_max_pods
  }

  network_profile {
    network_plugin    = var.network_plugin
    network_policy    = var.network_policy
    service_cidr      = var.service_cidr
  }

  private_cluster_enabled = var.enable_private_cluster

  tags = var.tags
}

# Private DNS Zone for AKS
resource "azurerm_private_dns_zone" "aks" {
  name                = "privatelink.${var.location_lz}.azmk8s.io"
  resource_group_name = var.rg_lz
}

# Private DNS Zone Virtual Network Link
resource "azurerm_private_dns_zone_virtual_network_link" "aks" {
  name                  = "${var.cluster_name}-dns-link"
  resource_group_name   = var.rg_lz
  private_dns_zone_name = azurerm_private_dns_zone.aks.name
  virtual_network_id    = var.vnet_id

  dynamic "registration_enabled" {
    for_each = var.enable_registration ? [1] : []
    content {
      registration_enabled = true
    }
  }
}
