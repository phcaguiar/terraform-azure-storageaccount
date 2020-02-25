# Terraform Azure Storage Account Module

This module creates an Azure Storage Account, Storage Account to host a Static Website, Storage Container and Storage Share following the best practices defined by the SRE/Cloud team at Stone CO.

## Requirements

- Terraform version 0.12+
- Azurerm Provider version 2.0+ (tested on version 2.0.0)

## How to use

The following parameters are mandatory for all resources of this module:

- ``storage_account_resource_group_name``: All resources in this module will be created in this resource group. Ex: Infrastructure-Common-EC2-DEV
- ``storage_account_name``: Name of the storage account.

The example below will create a storage account:

```hcl
module "storage_account" {

  source = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions

  storage_account_name                      = "..."
  storage_account_resource_group_name       = "..."
  storage_account_location                  = "..."
  storage_account_enable_https_traffic_only = "..."
  storage_account_tier                      = "..."
  storage_account_kind                      = "..."
  storage_account_replication_type          = "..."

}
```

The example below will create a storage account to host a static website:

```hcl
module "storage_account_static_website" {

  source = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions

  has_static_website                        = "..." # This variable with the value true defines what the storage account will be for hosting a static website
  storage_account_name                      = "..."
  storage_account_resource_group_name       = "..."
  storage_account_location                  = "..."
  storage_account_enable_https_traffic_only = "..."
  storage_account_tier                      = "..."
  storage_account_kind                      = "..."
  storage_account_replication_type          = "..."
  storage_account_index_document            = "..." # Use this variable only if the storage account is for hosting a static website
  storage_account_error_404_document        = "..." # Use this variable only if the storage account is for hosting a static website

}
```

The example below will create a storage container on an existing storage account:

```hcl
module "storage_container" {

  source = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions

  has_storage_account           = "..." # This variable with the value false defines that the storage account will not be created
  storage_account_name          = "..."
  has_storage_container         = "..." # This variable with the value true defines that the storage container will be created
  storage_container_name        = "..." # Use this variable only to create a storage container
  storage_container_access_type = "..." # Use this variable only to create a storage container

}
```

The example below will create a storage share on an existing storage account:

```hcl
module "storage_share" {

  source = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions

  has_storage_account  = "..." # This variable with the value false defines that the storage account will not be created
  storage_account_name = "..."
  has_storage_share    = "..." # This variable with the value true defines that the storage share will be created
  storage_share_name   = "..." # Use this variable only to create a storage share
  storage_share_quota  = "..." # Use this variable only to create a storage share

}
```

## Contributing

Contributions of all forms are welcome. Just open a new issue or pull request.