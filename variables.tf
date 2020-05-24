# Storage account variables

variable "create_storage_account" {
  description = "(Optional) If true, the module will create a storage account. Otherwise they won't be created. Defaults to true."
  default     = "true"
}

variable "storage_account_resource_group_name" {
  description = "(Required only to provision storage account) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  default     = null
  
}

variable "storage_account_location" {
  description = "(Optional) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Defalts to eastus2."
  default     = "eastus2"
}

variable "storage_account_name" {
  description = "(Required) Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "storage_account_enable_https_traffic_only" {
  description = "(Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true."
  default     = "true"
}

variable "storage_account_tier" {
  description = "(Optional) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. Defaults to Standard."
  default     = "Standard"
}

variable "storage_account_kind" {
  description = "(Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2."
  default     = "StorageV2"
}

variable "storage_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS. Defaults to LRS."
  default     = "LRS"
}

# Storage account variables for static website

variable "create_static_website" {
  description = "(Optional) If true, the module will create a storage account to static website. Otherwise they won't be created. Defaults do false."
  default     = "false"
}

variable "storage_account_index_document" {
  description = "(Optional) The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive. Defaults to index.html."
  default     = "index.html"
}

variable "storage_account_error_404_document" {
  description = "(Optional) The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file. Defaults to 404.html."
  default     = "404.html"
}

# Storage container variables

variable "storage_container_name" {
  description = "(Required only to provision storage container) The name of the Container which should be created within the Storage Account."
  default     = ""
}

variable "storage_container_access_type" {
  description = "(Optional) The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private."
  default     = "private"
}

# Storage share variables

variable "storage_share_name" {
  description = "(Required only to provision storage share) The name of the share. Must be unique within the storage account where the share is located."
  default     = ""
}

variable "storage_share_quota" {
  description = "(Optional) The maximum size of the share, in gigabytes. For Standard storage accounts, this must be greater than 0 and less than 5120 GB (5 TB). For Premium FileStorage storage accounts, this must be greater than 100 GB and less than 102400 GB (100 TB). Default is 5120."
  default     = "5120"
}