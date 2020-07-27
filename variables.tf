variable "rg_prefix" {

 type = "string"

 description = "resource group name prefix to use to create resource groups"

 }



variable "rg_location" {

 type = "string"

 description = "resource group location to use for all resources"

 }



variable "vm_hostname" {
 type = "string"
 }



variable "vm_admin_user" {
 type = "string"
 }



 variable "vm_admin_pwd" {
 type = "string"
 }



 variable "vm_public_dns_prefix" {
 type = "string"
 }



 variable "vm_size" {
 type = "string"
 }



 variable "net_sub_cidr" {
 type = "list"
 }



 variable "net_sub_name" {
 type = "list"
 }



 variable "net_endpoint_sub_cidr" {
 type = "string"
 }



 variable "sql_svr_name_prefix" {
 type = "string"
 }



variable "sql_svr_ver" {
 type = "string"
 }



variable "sql_admin_user" {
 type = "string"
 }



 variable "sql_admin_pwd" {
 type = "string"
 }



variable "sql_db_edition" {
 type = "string"
 }



variable "sql_db_service_objective_name" {
 type = "string"
 }

variable "storage_account_name" {
 type = "string"
 }

 variable "data_lake_storage_name" {
 type = "string"
 }



 variable "net_endpoint_sub_cidr_storage" {
  type = string
 }

  variable "data_factory_name" {
  type = string
 }

 variable "key_vault_name"{
     type = string
 }

 variable "data_bricks_name"{
     type = string
 }