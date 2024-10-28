resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.address_space #["10.0.0.0/16"]
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = var.tags
}


resource "azurerm_subnet" "subnet_lz" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = azurerm_resource_group.resource_group.location
  virtual_network_name = var.vnet_name
  address_prefixes     = each.value.address_prefixes

}
