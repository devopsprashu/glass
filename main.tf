terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "c64cf66f-900c-4cad-b6cd-ee68a9839e8a"
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}