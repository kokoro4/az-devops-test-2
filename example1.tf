provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x.
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}

terraform {
    backend "azurerm" {
        resource_group_name = "z1p-cont-1"    
        storage_account_name = "azuswtfz1pstate01"
        container_name = "azdevopstest2"
    }
}

data "azurerm_client_config" "current" {}

# resource "azurerm_resource_group" "tamopsrg" {
#   name     = "tamops-tf"
#   location = "westus2"
# }

# resource "azurerm_storage_account" "tamopssa" {
#   name                     = "tamopssatf"
#   resource_group_name      = azurerm_resource_group.tamopsrg.name
#   location                 = azurerm_resource_group.tamopsrg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }
