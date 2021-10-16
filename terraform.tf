terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "remote" {}
}
