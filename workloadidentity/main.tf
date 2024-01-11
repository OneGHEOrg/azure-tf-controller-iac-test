provider "azurerm" {
  version                   = "3.85"
  features {}
  subscription_id           = "fbd8ca72-8db1-4a6a-8b4c-773fd80183fe"
  tenant_id                 = "1b4a4fed-fed8-4823-a8a0-3d5cea83d122"
  use_aks_workload_identity = true
  use_cli                   = false
}

resource "azurerm_resource_group" "test-rg" {
  name     = "tfc-test-rg2"
  location = "westus"
  tags     = {
    "createdby" : "workloadidentity"
  }
}


terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}