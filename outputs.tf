
output "resource_group_name" {
  description = "Name of the Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Name of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "virtual_network_address_space" {
  description = "Address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}
