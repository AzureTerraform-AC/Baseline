terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

module "baseline" {
  source = "./modules/Baseline_Resources"

  region      = var.region
  environment = var.environment
  owner       = var.owner
  rg_name     = var.rg_name

}