terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.20.0"

    }
  }
}

provider "azurerm"{
  features {
    
  }
  client_id = "${var.AZURE_CLIENT_ID}"
  tenant_id = "${var.TENANT_ID}"
  client_secret = "${var.CLIENT_SECRET}"
  subscription_id = "${var.SUBSCRIPTION_ID}"
    
}