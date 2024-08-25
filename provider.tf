terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "eb8ae1e3-b645-46c8-95fd-840b3738755c"
  features {}
}


#create a resource_group
resource "azurerm_resource_group" "terra-demo" {
  name     = "rg-vmss"
  location = "eastus"
}