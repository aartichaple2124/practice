data "azurerm_resource_group" "roborg" {
  name = "robo_terraform_RG"
}

data "azurerm_subnet" "subnet" {
  name                 = "default"
  virtual_network_name = "robo_vnet"
  resource_group_name  = data.azurerm_resource_group.roborg.name
}