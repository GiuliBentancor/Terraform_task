terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.1.0"
    }
  }
  cloud {
    organization = "terraform_level_up"
    workspaces {
      name = "cli_workspace_week_4"
    }
  }
}

provider "azurerm" {
  features{}
}