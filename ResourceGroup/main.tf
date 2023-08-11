terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
}

provider "azurerm" {
  features {  }
}


locals {
    name = "IvoTalents"
    tags = {
        owner       = "LGM"
        environment = "TerraformLab"
    }
}


resource "azurerm_resource_group" "resourceGroup" {
  name     = var.rsgName
  location = var.location
  tags = local.tags
}

resource "azurerm_storage_account" "example" {
  name                     = var.stgactName //this one needs to be unique globally so we need to use a variable
  resource_group_name      = azurerm_resource_group.resourceGroup.name
  location                 = azurerm_resource_group.resourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = local.tags
}