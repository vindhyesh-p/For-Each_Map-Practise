terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.53.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "vkp-new-rg"
    storage_account_name = "vkpnewstg"
    container_name = "vkp-new-cont"
    key = "vkp.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4f745e59-7394-4e4f-be89-96b2457d289c"
}