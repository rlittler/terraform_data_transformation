resource "azurerm_resource_group" "databricks" {

  name     = "${azurerm_resource_group.rgmain.name}-databricks"

  location = "${azurerm_resource_group.rgmain.location}"
}

resource "random_id" "randomId_databricks" {

  byte_length = 4

}

data "azurerm_client_config" "current_data_bricks" {}

resource "azurerm_databricks_workspace" "databricks" {
  name                = "${var.data_bricks_name}${random_id.randomId.hex}"
  resource_group_name = "${azurerm_resource_group.databricks.name}"
  location            = "${azurerm_resource_group.databricks.location}"
  sku                 = "standard"

}

# data "azurerm_resources" "databricks" {
#   resource_group_name = "${azurerm_resource_group.databricks.name}"
#   type = "Microsoft.Databricks/workspaces"
#   name = azurerm_databricks_workspace.databricks.name



# }