terraform {
  required_version = ">=1.6.6"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.2.0"
    }
  }
}

# default provider
provider "azurerm" {
  features {}
}

