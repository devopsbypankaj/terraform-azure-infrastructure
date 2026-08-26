module "rg-module" {
  source = "../../Modules/Azurerm_Resource_Group"
  rgs    = var.rgs
}

module "storage-module" {
  depends_on = [module.rg-module]
  source     = "../../Modules/Azurerm_Storage_Account"
  storages   = var.storages
}

module "vnet-module" {
  depends_on = [module.rg-module]
  source     = "../../Modules/Azurerm_Virtual_Network"
  vnets      = var.vnets
}

module "subnet-module" {
  depends_on = [module.vnet-module]
  source     = "../../Modules/Azurerm_Subnet"
  subnets    = var.subnets
}