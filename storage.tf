resource "random_id" "randomId_storage" {

  byte_length = 4

}
resource "azurerm_resource_group" "storage" {

  name     = "${azurerm_resource_group.rgmain.name}-storage"

  location = "${azurerm_resource_group.rgmain.location}"

}



// Storage Account - STAGING
resource "azurerm_storage_account" "stagingStorageAccount" {
  name                     = "${var.storage_account_name}${random_id.randomId_storage.hex}"
  resource_group_name      = "${azurerm_resource_group.storage.name}"
  location                 = "${azurerm_resource_group.storage.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "UAT"
    type = "Storage"
  }
}


// Data Lake - DATABRICKS ACCESS

resource "azurerm_storage_account" "dataLakeGen2Storage" {
  name                     = "${var.data_lake_storage_name}${random_id.randomId_storage.hex}"
  resource_group_name      = "${azurerm_resource_group.storage.name}"
  location                 = "${azurerm_resource_group.storage.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}