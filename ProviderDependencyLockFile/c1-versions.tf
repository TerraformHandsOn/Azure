terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "1.44.0"
     }
     random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }

  }

}

provider "azurerm" {
 
}