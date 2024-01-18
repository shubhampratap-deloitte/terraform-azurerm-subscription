## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
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
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | (Optional) The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID. | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Azure Client ID (Application Object ID) | `string` | `null` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The Client Secret for the Client ID | `string` | `null` | no |
| <a name="input_enrollment_account_name"></a> [enrollment\_account\_name](#input\_enrollment\_account\_name) | Details of the Enrollment Account Name | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Azure Subscription ID. | `string` | `null` | no |
| <a name="input_subscription_management_group_id_name"></a> [subscription\_management\_group\_id\_name](#input\_subscription\_management\_group\_id\_name) | (Required) The ID of the Management Group to associate the Subscription with. *Changing this forces a new Management to be created.* | `string` | n/a | yes |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | (Required) The Name of the Subscription. This is the Display Name in the portal. | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The Azure Tenant ID. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_enrollment_account_scope_id"></a> [billing\_enrollment\_account\_scope\_id](#output\_billing\_enrollment\_account\_scope\_id) | ID of the billing enrollment account scope. |
| <a name="output_created_subscription_id"></a> [created\_subscription\_id](#output\_created\_subscription\_id) | ID of the newly created Azure subscription. |
| <a name="output_management_group_subscription_association_id"></a> [management\_group\_subscription\_association\_id](#output\_management\_group\_subscription\_association\_id) | ID of the management group subscription association. |
