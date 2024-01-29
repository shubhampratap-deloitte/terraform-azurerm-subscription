## Introduction

This Terraform module Create a subscription and also associates with the specified Management/Submanagement Group ID.

## Consuming the Module
This module will create a Subscription
In variable section default values provided at description section very clearly.
```hcl
//---------------------------------------------------------------------
// Modules
module "subscription" {
  source        = "app.terraform.io/edj_demo_org_000/subscription/azurerm"
  version       = "x.x.x" ## version of module need to be pulled
  subscriptions = var.subscription_subscriptions 
}

//sample.auto.tfvars
subscription_subscriptions = {
  sub1 = {
    billing_account_name     = ""
    enrollment_account_name  = ""
    management_group_id_name = ""
    tags                     = []
  }
}
```
Here sub1 is the Name of the Subscription Getting Provisioned
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group_subscription_association.subscription_associate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_subscription_association) | resource |
| [azurerm_subscription.subscription_create](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.billing_enrollment_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_enrollment_account_scope) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subscriptions"></a> [subscriptions](#input\_subscriptions) | A map of the subscription to create. The Key will be the name of the Subscription. The value is an object with the following attributes:<br><br>- `billing_account_name` - the name of the billing account<br>- `enrollment_account_name` - the name of the enrollment\_account\_name<br>- 'subscription\_name' - the name of the new subscription<br>- 'management\_group\_id\_name' = Name of the Management Group you want to associate this with<br>- `tags` - a map of type string<br>  type = map(object({<br>    name     = string<br>    location = string<br>    tags     = map(string)<br>  }))<br>} | <pre>map(object({<br>    billing_account_name     = string<br>    enrollment_account_name  = string<br>    subscription_name        = string<br>    management_group_id_name = string<br>    tags                     = map(string)<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subscription_association_details"></a> [subscription\_association\_details](#output\_subscription\_association\_details) | The attributes of the azurerm\_management\_group\_subscription\_association resource for that association, such as the management group ID and the subscription ID |
| <a name="output_subscription_details"></a> [subscription\_details](#output\_subscription\_details) | The attributes of the azurerm\_subscription resource for that subscription, such as its ID, name, tags, etc. |
