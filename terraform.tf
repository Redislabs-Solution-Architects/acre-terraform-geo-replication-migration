terraform {
  required_version = ">= 1.0.8"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.2.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}
