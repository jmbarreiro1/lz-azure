module "lz-module" {
  source        = "./lz-module"  # Path to the module
  rg            = var.rg
  location      = var.location
  subscriptionid = var.subscriptionid
  
}

