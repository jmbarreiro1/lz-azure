module "lz-module" {
  source        = "./lz-module"  # Path to the module
  rg_lz           = var.rg_lz
  location_lz     = var.location_lz
  subscriptionid = var.subscriptionid
  tags_lz = var.tags_lz
  vnet_name_lz = var.vnet_name_lz
  address_space_lz = var.address_space_lz
  subnets_lz = var.subnets_lz 
  
}

module "sp-module" {
   source = "./sp-module"
   rg_sp = var.rg_sp
   location_sp = var.location_sp
   subscriptionid = var.subscriptionid
   tags_sp = var.tags_sp
   vnet_name_sp = var.vnet_name_sp
   address_space_sp = var.address_space_sp
   subnets_sp = var.subnets_sp
 }