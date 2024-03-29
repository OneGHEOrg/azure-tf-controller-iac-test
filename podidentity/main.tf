provider "azurerm" {
  features {}
  subscription_id = "fbd8ca72-8db1-4a6a-8b4c-773fd80183fe"
  tenant_id       = "1b4a4fed-fed8-4823-a8a0-3d5cea83d122"
  use_msi         = true
}

resource "azurerm_resource_group" "test-rg" {
  name     = "tfc-test-rg"
  location = "westus"
  tags     = {
    "createdby" : "aadpodidentity"
  }
}


terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.85"
    }
  }
}