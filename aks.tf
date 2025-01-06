module "aks_lz" {
  source = "./aks-module"
  cluster_name        = var.cluster_name
  location         = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  default_node_pool_name            = var.default_node_pool_name
  default_node_pool_vm_size         = var.default_node_pool_vm_size
  default_node_pool_node_count      = var.default_node_pool_node_count
  default_node_pool_os_disk_size_gb = var.default_node_pool_os_disk_size_gb
  subnet_id                         = module.vnet.aks_subnet_id
  vnet_id                           = module.vnet.vnet_id
  default_node_pool_max_pods = var.default_node_pool_max_pods
  network_plugin = var.network_plugin
  network_policy = var.network_plugin
  service_cidr   = var.service_cidr
  enable_private_cluster = true
  enable_registration    = false
  tags = var.tags_lz
}

