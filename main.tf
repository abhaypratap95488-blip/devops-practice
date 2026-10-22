
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "centralindia"
}


resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-devops-practice"
  address_space       = ["10.0.0.0/16"]
  location            = "centralindia"
  resource_group_name = "rg"
}


resource "azurerm_subnet" "subnet" {
  name                 = "snet-devops-practice"
  resource_group_name  = "rg"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-devops-practice"
  location            = "centralindia"
  resource_group_name = "rg"
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}


