module "lz-module" {
  source        = "./lz-module"  # Path to the module
  rg            = "rg-name"
  location      = "West Europe"
  subscriptionid = var.subscriptionid
  
}

