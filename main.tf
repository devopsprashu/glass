terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "fadfa500-48fa-4d7d-ae72-215103d56b2f"
}

resource "azurerm_resource_group" "parent-rg" {
  name     = "parent"
  location = "West Europe"
}

resource "azurerm_storage_account" "childstg" {
  name                     = "child"
  resource_group_name      = azurerm_resource_group.parent-rg.name
  location                 = azurerm_resource_group.parent-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}