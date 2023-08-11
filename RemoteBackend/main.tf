terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name = var.remotestatersgname
    storage_account_name = var.stgactname
    container_name = "terraformstate"
    key = "terraform.terraformstate" //name of the state file in the storage account
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rsgname
  location = var.location
}


