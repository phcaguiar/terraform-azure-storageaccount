# Terraform Azure Storage Account Queue Module

This module creates an Azure Storage Account Queue and Authorization Rule following the best practices defined by the SRE/Cloud team at Stone CO.

## Requirements

- Terraform version 0.12+
- Azurerm Provider version 2.0+ (tested on version 2.0.0)

## How to use

The following parameters are expected:
- ``servicebus_queue_name``: All resources in this module will be created in this dns zone.
- ``resource_group_name``: All resources in this module will be created in this resource group. Ex: Infrastructure-Common-EC2-DEV
- ``servicebus_namespace_name``: All resources in this module will be created in this service bus namespace.
- ``has_servicebus_queue_authorization_rule``: If you need to create service bus authorization rule, you must pass the value true.
- ``servicebus_queue_authorization_rule_name``: Name of the service bus queue authorization rule.

With all that defined, just call it in your configuration

```hcl
module "servicebus_queue" {

  source = "git@github.com:stone-payments/terraform-azureservicebus-queue.git?ref=v1.0.0" # see tags for available versions

  servicebus_queue_name                    = "..."
  resource_group_name                      = "..."
  servicebus_namespace_name                = "..."

  has_servicebus_queue_authorization_rule  = "..."

# The following parameters must be used if the variable has_servicebus_queue_authorization_rule is equal to true.
  servicebus_queue_authorization_rule_name = "..."

}
```

## Contributing

Contributions of all forms are welcome. Just open a new issue or pull request.