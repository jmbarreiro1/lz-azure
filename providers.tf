# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_version = ">= 1.3.7" 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.6.0"
    }
  }

  # export ARM_ACCESS_KEY=$(az keyvault secret show --name terraform-backend-key --vault-name myKeyVault --query value -o tsv)
  # backend "azurerm" {
  #     resource_group_name  = "tfstate"
  #     storage_account_name = "<storage_account_name>"
  #     container_name       = "tfstate"
  #     key                  = "terraform.tfstate"
  # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscriptionid

}
