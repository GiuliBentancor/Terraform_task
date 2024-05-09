terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "GiuliGroup"
    storage_account_name = "az204giuli"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features{}
}