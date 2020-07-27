resource "random_id" "randomId_datafactory" {

  byte_length = 4

}

resource "azurerm_resource_group" "data_factory" {

  name     = "${azurerm_resource_group.rgmain.name}-df"

  location = "${azurerm_resource_group.rgmain.location}"

}

resource "azurerm_data_factory" "data_factory" {
  name                = "${var.data_factory_name}${random_id.randomId.hex}"
  location            = "${azurerm_resource_group.data_factory.location}"
  resource_group_name = "${azurerm_resource_group.data_factory.name}"
}