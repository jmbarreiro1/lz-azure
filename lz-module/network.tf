resource "azurerm_virtual_network" "vnet_lz" {
  name                = var.vnet_name_lz
  location            = azurerm_resource_group.resource_group_lz.location
  resource_group_name = azurerm_resource_group.resource_group_lz.name
  address_space       = var.address_space_lz #["10.0.0.0/16"]
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = var.tags_lz
}


resource "azurerm_subnet" "subnet_lz" {
  for_each = var.subnets_lz

  name                 = each.key
  resource_group_name  = azurerm_resource_group.resource_group_lz.name
  virtual_network_name = var.vnet_name_lz
  address_prefixes     = each.value.address_prefixes
  
   depends_on = [
    azurerm_virtual_network.vnet_lz
  ]
}
