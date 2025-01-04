resource "azurerm_virtual_network" "vnet_sp" {
  name                = var.vnet_name_sp
  location            = azurerm_resource_group.resource_group_sp.location
  resource_group_name = azurerm_resource_group.resource_group_sp.name
  address_space       = var.address_space_sp #["10.0.0.0/16"]
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = var.tags_sp

}

resource "azurerm_subnet" "subnet_sp" {
  for_each = var.subnets_sp

  name                 = each.key
  resource_group_name  = azurerm_resource_group.resource_group_sp.location
  virtual_network_name = var.vnet_name_sp
  address_prefixes     = each.value.address_prefixes

}
