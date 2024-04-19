terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      required_version = "~>2.0"
    }
  }

  backend "azurerm" {
    key = "${var.prefix}-${var.environment}.tfstate"
  }
  required_version = ">=0.12"
}

provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}