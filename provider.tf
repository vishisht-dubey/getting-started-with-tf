# Terraform Block
terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "1.44.0"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
backend "azurerm" {
   storage_account_name = "mysac17xf9mz2mqjf0f9"
   container_name = "myfirstcontainer"
   key="tf/terraform.tfstate"
  }
}

# Provider Block
provider "azurerm" {
features {}          
}


