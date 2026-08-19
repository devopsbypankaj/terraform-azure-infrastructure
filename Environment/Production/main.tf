module "rg-module" {
  source = "../../Modules/Azurerm_Resource_Group"
  rgs    = var.rgs
}

module "storage-module" {
  depends_on = [module.rg-module]
  source     = "../../Modules/Azurerm_Storage_Account"
  storages   = var.storages
}