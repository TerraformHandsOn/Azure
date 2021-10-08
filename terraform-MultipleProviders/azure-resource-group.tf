# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Provider-2 for WestUS
 provider "azurerm" {
   features {
      virtual_machine {
        delete_os_disk_on_deletion = false
      }
   }
   alias = "provider2-westus"
   #client_id = ""
   #client_secret = ""
   #subscription_id = ""

 }

# Create Resource Group 
resource "azurerm_resource_group" "myrg" {
  location = "eastus"
  name = "myrg1"  
}

resource "azurerm_resource_group" "myrg2" {
  name ="myrg-2"
  location = "West US"
  provider = azurerm.provider2-westus
}