resource "azurerm_storage_account" "storage_account" {
  count                     =  !var.has_static_website && var.has_storage_account ? 1 : 0 #https://stackoverflow.com/questions/39479849/is-there-a-way-and-or-conditional-operator-in-terraform
  name                      =  var.storage_account_name
  resource_group_name       =  var.storage_account_resource_group_name
  location                  =  var.storage_account_location
  enable_https_traffic_only =  var.storage_account_enable_https_traffic_only
  account_tier              =  var.storage_account_tier
  account_kind              =  var.storage_account_kind
  account_replication_type  =  var.storage_account_replication_type
}

resource "azurerm_storage_account" "storage_account_with_static_website" {
  count                     =  var.has_static_website && var.has_storage_account ? 1 : 0
  name                      =  var.storage_account_name
  resource_group_name       =  var.storage_account_resource_group_name
  location                  =  var.storage_account_location
  enable_https_traffic_only =  var.storage_account_enable_https_traffic_only
  account_tier              =  var.storage_account_tier
  account_kind              =  var.storage_account_kind
  account_replication_type  =  var.storage_account_replication_type
  static_website            {
    index_document      = var.storage_account_index_document
    error_404_document  = var.storage_account_error_404_document
  }
}

resource "azurerm_storage_container" "storage_container" {
  count                 = var.has_storage_container ? 1 : 0
  name                  = var.storage_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.storage_container_access_type
  depends_on            = [azurerm_storage_account.storage_account]
}

resource "azurerm_storage_share" "storage_share" {
  count                = var.has_storage_share ? 1 : 0
  name                 = var.storage_share_name
  storage_account_name = var.storage_account_name
  quota                = var.storage_share_quota
  depends_on           = [azurerm_storage_account.storage_account]
}
