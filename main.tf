# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg2" {
  name = "myrg-2.0"
  location = "East US"
}

# Resource-2: Random String 
resource "random_string" "myrandom" {
  length = 16
  upper = false 
  special = false
}

# Resource-3: Azure Storage Account 
resource "azurerm_storage_account" "mysa" {
  name                     = "mysa${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.myrg2.name
  location                 = azurerm_resource_group.myrg2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  # account_encryption_source = "Microsoft.Storage"

  tags = {
    environment = "staging"
  }
}
resource "azurerm_storage_container" "mycontainer" {
  name                  = "myfirstcontainer"
  storage_account_name  = azurerm_storage_account.mysa.name
  container_access_type = "private"
}
