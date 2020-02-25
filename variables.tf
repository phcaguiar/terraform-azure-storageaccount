# Storage account variables

variable "has_storage_account" {
  description = "If true, the module will create a storage account. Otherwise they won't be created."
  default     = "true"
}

variable "storage_account_resource_group_name" {
  description = "The resource group name of storage account."
  
}

variable "storage_account_location" {
  description = "The location of storage account."
}

variable "storage_account_name" {
  description = "The name of the storage account."
}

variable "storage_account_enable_https_traffic_only" {
  description = "Option to enable advanced https traffic only."
}

variable "storage_account_tier" {
  description = "Account tier."
}

variable "storage_account_kind" {
  description = "Account kind."
}

variable "storage_account_replication_type" {
  description = "Account replication type."
}

# Storage account variables for static website

variable "has_static_website" {
  description = "If true, the module will create a storage account to static website. Otherwise they won't be created."
  default     = "false"
}

variable "storage_account_index_document" {
  description = "The index document."
  default     = null
}

variable "storage_account_error_404_document" {
  description = "The error document."
  default     = null
}

# Storage container variables

variable "has_storage_container" {
  description = "If true, the module will create a storage container. Otherwise they won't be created."
  default     = "false"
}

variable "storage_container_name" {
  description = "The name of the storage container."
  default     = null
}

variable "storage_container_access_type" {
  description = "Storage container access type."
  default     = null
}

# Storage share variables

variable "has_storage_share" {
  description = "If true, the module will create a storage share. Otherwise they won't be created."
  default     = "false"
}

variable "storage_share_name" {
  description = "The name of the storage share."
  default     = null
}

variable "storage_container_quota" {
  description = "Storage share quota."
  default     = null
}