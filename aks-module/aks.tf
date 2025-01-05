resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name                = var.default_node_pool_name
    vm_size             = var.default_node_pool_vm_size
    node_count          = var.default_node_pool_node_count
    max_pods            = var.default_node_pool_max_pods
    os_disk_size_gb     = var.default_node_pool_os_disk_size_gb
    vnet_subnet_id      = var.subnet_id
    tags                = var.node_pool_tags
  }

  network_profile {
    network_plugin       = var.network_plugin
    network_policy       = var.network_policy
    service_cidr         = var.service_cidr
    dns_service_ip       = var.dns_service_ip
    docker_bridge_cidr   = var.docker_bridge_cidr
    load_balancer_sku    = "standard"
    outbound_type        = "userDefinedRouting"
  }

  private_cluster_enabled = true

  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges

  tags = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_zone_link" {
  count               = var.private_dns_zone_id == null ? 0 : 1
  private_dns_zone_id = var.private_dns_zone_id
  virtual_network_id  = var.vnet_id
  depends_on          = [azurerm_kubernetes_cluster.aks]
}