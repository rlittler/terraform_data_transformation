
rg_prefix   = "datatransformation"

rg_location = "west europe"




vm_hostname          = "sourcevm"

vm_size              = "Standard_DS2_V2"

vm_admin_user        = "vmadmin"

 vm_admin_pwd         = "" 

vm_public_dns_prefix = "simplevmip"




net_sub_cidr          = ["10.0.1.0/24", "10.0.2.0/24"]

net_sub_name          = ["subnet1", "subnet2"]

net_endpoint_sub_cidr = "10.0.3.0/24"




sql_svr_name_prefix           = "sqlsvr"

sql_svr_ver                   = "12.0"

sql_admin_user                = "sqladmin"

sql_admin_pwd                 = "02June94****" 

sql_db_edition                = "GeneralPurpose"

sql_db_service_objective_name = "GP_S_Gen5_1" 




storage_account_name    ="stagingstorage"

data_lake_storage_name       ="datalake"

net_endpoint_sub_cidr_storage = "10.0.4.0/24"


data_factory_name = "datafactory"

key_vault_name = "keyvault"

data_bricks_name ="databricks"