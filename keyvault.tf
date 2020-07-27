resource "random_id" "randomId_keyvault" {

  byte_length = 4

}

resource "azurerm_resource_group" "key_vault" {

  name     = "${azurerm_resource_group.rgmain.name}-kv"

  location = "${azurerm_resource_group.rgmain.location}"

}


# provider "azurerm" {
#   features {
#     key_vault {
#       purge_soft_delete_on_destroy = true
#     }
#   }
# }

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "resourceGroup1"
  location = "West US"
}

resource "azurerm_key_vault" "example" {
  name                        = "${var.sql_svr_name_prefix}${random_id.randomId_keyvault.hex}"
  location                    = "${azurerm_resource_group.key_vault.location}"
  resource_group_name         = "${azurerm_resource_group.key_vault.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  //soft_delete_enabled         = true
  //purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "get",
    ]

    secret_permissions = [
      "get",
    ]

    storage_permissions = [
      "get",
    ]
  }

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }

  tags = {
    environment = "Testing"
  }
}