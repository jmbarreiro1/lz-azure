module "aks" {
  source = "./aks-module"

  cluster_name         = var.cluster_name
  location             = var.location_lz
  resource_group_name  = var.rg_lz
  dns_prefix           = var.dns_prefix

  default_node_pool_name          = "default"
  default_node_pool_vm_size       = "Standard_DS2_v2"
  default_node_pool_node_count    = 2
  default_node_pool_max_pods      = 110
  default_node_pool_os_disk_size_gb = 128
  subnet_id                       = module.lz-module.subnet_ids_lz["subnet2"]
  vnet_id                         = module.lz-module.vnet_name_lz
  private_dns_zone_id             = data.azurerm_private_dns_zone.aks_private_dns.id

  network_plugin = "azure"
  network_policy = "calico"
  service_cidr   = "10.0.0.0/16"
  dns_service_ip = "10.0.0.10"
  #docker_bridge_cidr = "172.17.0.1/16"

  #api_server_authorized_ip_ranges = ["10.0.0.0/8"]

  tags = {
    Environment = "Dev"
    Owner       = "User"
  }
}

data "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  virtual_network_name = "my-vnet"
  resource_group_name  = "my-resource-group"
}

data "azurerm_virtual_network" "my_vnet" {
  name                = "my-vnet"
  resource_group_name = "my-resource-group"
}

data "azurerm_private_dns_zone" "aks_private_dns" {
  name = "privatelink.<region>.azmk8s.io"
}
