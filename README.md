# Terraform Azure Storage Account

This module creates a traditional storage account, storage account to host a static website, storage container and storage share.

## Requirements

- Terraform version 0.12
- Azurerm Provider version 2.0+ (tested on version 2.11.0)

## Running

**The following parameters are mandatory to provision a storage account:**

- ``storage_account_resource_group_name``: The resource group name of the storage account.
- ``storage_account_name``: The name of the storage account that will be created.

With all that defined, just call it in your configuration.

```hcl
module "storage_account" {
  source                              = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions
  storage_account_name                = "..."
  storage_account_resource_group_name = "..."
}
```
**The following parameters are mandatory to provision a storage account to host a static website:**

- ``create_storage_account``: Parameter to execute terraform module without create a traditional storage account.
- ``create_static_website``: Parameter to create a storage account for host a static web site.
- ``storage_account_resource_group_name``: The resource group name of the storage account.
- ``storage_account_name``: The name of the storage account that will be created.

With all that defined, just call it in your configuration.

```hcl
module "storage_account_static_website_" {
  source                              = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions
  create_storage_account              = "false"
  create_static_website               = "true"
  storage_account_name                = "..."
  storage_account_resource_group_name = "..."
}
```

**The following parameters are mandatory to provision a storage container:**

- ``create_storage_account``: Parameter to execute terraform module without create a storage account.
- ``storage_account_name``: The storage account name of the container.
- ``storage_container_name``: The name of the storage container that will be created.

With all that defined, just call it in your configuration.

```hcl
module "storage_container" {
  source                 = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions
  create_storage_account = "false"
  storage_account_name   = "..."
  storage_container_name = "..."
}
```
**The following parameters are mandatory to provision a storage share:**

- ``create_storage_account``: Parameter to execute terraform module without create a storage account.
- ``storage_account_name``: The storage account name of the share.
- ``storage_container_name``: The name of the storage share that will be created.

With all that defined, just call it in your configuration.

```hcl
module "storage_share" {
  source                 = "git@github.com:stone-payments/terraform-azure-storageaccount.git?ref=v1.0.0" # see tags for available versions
  create_storage_account = "false"
  storage_account_name   = "..."
  storage_share_name     = "..."
}
```

**Note: The default value and description for all variables are specified in `variables.tf`.**


## Contributing

Contributions of all forms are welcome. Just open a new issue or pull request.
