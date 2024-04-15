module "baseline" {
  source = "./modules"

  prefix      = var.prefix
  region      = var.region
  environment = var.environment
  owner       = var.owner
  rg_name     = var.rg_name

}