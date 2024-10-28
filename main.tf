module "lz-module" {
  source        = "./lz-module"  # Path to the module
  rg            = var.rg
  location      = var.location
  subscriptionid = var.subscriptionid
  tags = var.tags_lz
  vnet_name = var.vnet_name_lz
  address_space = var.address_space_lz
  subnets = var.subnets_lz 
  
  
}

module "sp-module" {
  source = "./sp-module"
  rg = var.rgsp
  location = var.location
  subscriptionid = var.subscriptionid
  address_space = var.address_space_sp
  netname = "vnet-sp"
}