## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.86.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.86.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group_subscription_association.subscription_associate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_subscription_association) | resource |
| [azurerm_subscription.subscription_create](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_enrollment_account_scope) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | Detail of the Billing Account Name | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `string` | `null` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `string` | `null` | no |
| <a name="input_enrollment_account_name"></a> [enrollment\_account\_name](#input\_enrollment\_account\_name) | Details of the Enrollment Account Name | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | `null` | no |
| <a name="input_subscription_management_group_id_name"></a> [subscription\_management\_group\_id\_name](#input\_subscription\_management\_group\_id\_name) | Id of the Management Group You want the Subscription to be Associated | `string` | n/a | yes |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | `null` | no |

## Outputs

No outputs.
